using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Services;
using MedReportSpace.Models;
using Newtonsoft.Json.Linq;

namespace MedReportSpace
{

    public partial class BSReport_Chart : System.Web.UI.Page
    {
        static string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        static SqlDataAdapter da;
        static DataTable dts = new DataTable();
        static string username;
        static string avg_BS;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null) 
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                username = Session["username"].ToString();
                getBSReportChart();
                getBSAverageChart();
            }
            bs_avg.Text = avg_BS;

            List<Data> dataset = GetData();
            List<DateTime> dates = dataset.Select(d => d.Date).ToList();
            List<double> values = dataset.Select(d => (double)d.BS_lvl).ToList();
            List<double> val2 = ExSmoothing(values, 0.5);

            for (int i = 0; i < dates.Count; i++)
            {
                Chart1.Series["Original"].Points.AddXY(dates[i], values[i]);
               
            }
            for (int i = 0; i < val2.Count; i++)
            {
                Chart1.Series["Smoothed"].Points.AddXY(dates[i+1], val2[i]);

            }

            
        }

        public double PredictValueForDate(List<Data> data, DateTime futureDate)
        {
            if (data.Count < 2) return 0;

            DateTime baseDate = data[0].Date;
            var x = data.Select(d => (d.Date - baseDate).TotalDays).ToList(); // X: days
            var y = data.Select(d => d.BS_lvl).ToList();                            // Y: values

            // Calculate mean
            double xMean = x.Average();
            double yMean = y.Average();

            // Calculate slope (m) and intercept (b)
            double numerator = 0, denominator = 0;
            for (int i = 0; i < x.Count; i++)
            {
                numerator += (x[i] - xMean) * (y[i] - yMean);
                denominator += (x[i] - xMean) * (x[i] - xMean);
            }

            double m = numerator / denominator;
            double b = yMean - m * xMean;

            // Predict
            double futureX = (futureDate - baseDate).TotalDays;
            double predictedY = m * futureX + b;

            return predictedY;
        }

        public List<Data> GetData()
        {
            List<Data> datas = new List<Data>();
            using (SqlConnection conn = new SqlConnection(sqlconn))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT BS_lvl,Rp_Date FROM Blood_Sugar_Reports where userName = '" + Session["username"].ToString() +"' ORDER BY Rp_Date ", conn);
                cmd.CommandType = System.Data.CommandType.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    datas.Add(new Data()
                    {
                        BS_lvl = Convert.ToInt32(dr["BS_lvl"]),
                        Date = Convert.ToDateTime(dr["Rp_Date"])
                    });
                }
            }
            return datas;
        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            if(date_txt.Text == "")
            {
                Response.Write("<script>alert('Please Provide a date')</script>");
            }
            else
            {
                List<Data> dataset = GetData();
                DateTime futureDate;
                if (DateTime.TryParse(date_txt.Text, out futureDate))
                {
                    // Make sure dataPoints is fetched before this
                    double predicted = PredictValueForDate(dataset, futureDate);
                    precd_lbl.Text = $"Predicted Blood Sugar Level on {futureDate:dd-MM-yyyy} is {predicted:F2} mg/dl";

                    List<Data> datasets = GetData();
                    List<DateTime> dates = datasets.Select(d => d.Date).ToList();
                    List<double> values = datasets.Select(d => (double)d.BS_lvl).ToList();
                    List<double> val2 = ExSmoothing(values, 0.3);


                    List<double> linear = new List<double>();

                    for (int i = 0; i < dates.Count; i++)
                    {
                       
                        linear.Add(PredictValueForDate(dataset, dates[i]));
                        
                    }
                    linear.Add(PredictValueForDate(dataset, futureDate));
                    dates.Add(futureDate);
                    for (int i = 0; i < dates.Count; i++)
                    {

                        Chart1.Series["Linear"].Points.AddXY(dates[i], linear[i]);

                    }
                   


                }
                else
                {
                    precd_lbl.Text = "Please enter a valid date in dd-MM-yyyy format.";
                }

            }
               
        }

        public List<double> ExSmoothing(List<double> values, double alpha)
        {
            List<double> smooth = new List<double>();
            if (values == null || values.Count == 0)
            {
                Response.Write("<script>alert('null value')</script>>");
            }

            double smoothed = values[0];

            for (int i = 1; i < values.Count; i++)
            {
                smoothed = alpha * values[i] + (1 - alpha) * smoothed;
                smooth.Add(smoothed);
            }

            return smooth;
        }

        [WebMethod]
        public static string getBSReportChart()
        {
            /*string username = "pratik1234";*///Session["username"].ToString();

            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("  Select BS_lvl, Rp_Date from Blood_Sugar_Reports where userName='"+ username +"' ORDER BY Rp_Date", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            da = new SqlDataAdapter(cmd);

            if (dts != null)
                dts.Clear();
            da.Fill(dts);

            string list = JsonConvert.SerializeObject(dts);

            return list;
        }

        public static string getBSAverageChart()
        {
           /* string username = "pratik1234";*///Session["username"].ToString();

            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select AVG(BS_lvl)as avg_BS from Blood_Sugar_Reports Where userName='" + username + "'", conn);
            cmd.CommandType = System.Data.CommandType.Text;
           SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dta = new DataTable();
            da = new SqlDataAdapter(cmd);
            if (dts != null)
                dts.Clear();
            sda.Fill(dta);

            avg_BS = dta.Rows[0]["avg_BS"].ToString();

            string list = JsonConvert.SerializeObject(dta);

            return list;
        }

      
    }   
}