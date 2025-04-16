using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using Newtonsoft.Json;

namespace MedReportSpace
{
    public partial class BPReport_Chart : System.Web.UI.Page
    {
        static string sqlconn = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        static SqlDataAdapter da;
        static DataTable dts = new DataTable();
        static string avg_mm;
        static string avg_hg;
        static string username; /*Session["username"].ToString()*/
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else 
            {
                username = Session["username"].ToString();
            }
             getBPReportChart();
             getBPAverageChart();

            mm_avg.Text = avg_mm + "  ";
            hg_avg.Text = avg_hg;
        }
       
        [WebMethod]
        public static string getBPReportChart()
        {
            /*string username = "pratik1234";*///Session["username"].ToString();

            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select BP_mm,Rp_Date from Blood_Pressure_Reports Where userName='"+ username + "' Order By Rp_Date ASC;", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            da = new SqlDataAdapter(cmd);

            if (dts != null)
                dts.Clear();
            da.Fill(dts);

            string list = JsonConvert.SerializeObject(dts);

            return list;
        }

        [WebMethod]
        public static string getBPAverageChart()
        {
           /* string username = "pratik1234";*///Session["username"].ToString();

            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select AVG(BP_mm)as MM, AVG(BP_hg)as HG from Blood_Pressure_Reports Where userName='" + username + "'", conn);
            cmd.CommandType = System.Data.CommandType.Text;
           SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dta = new DataTable();
            da = new SqlDataAdapter(cmd);
            if (dts != null)
                dts.Clear();
            sda.Fill(dta);

            avg_mm = dta.Rows[0]["MM"].ToString();
            avg_hg = dta.Rows[0]["HG"].ToString();

            string list = JsonConvert.SerializeObject(dta);

            return list;
        }
    }
}