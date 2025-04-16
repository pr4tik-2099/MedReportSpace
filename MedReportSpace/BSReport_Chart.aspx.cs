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

namespace MedReportSpace
{

    public partial class BSReport_Chart : System.Web.UI.Page
    {
        static string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        static SqlDataAdapter da;
        static DataTable dts = new DataTable();
        static string username;
        
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
            }
                
        }

        [WebMethod]
        public static string getBSReportChart()
        {
            /*string username = "pratik1234";*///Session["username"].ToString();

            SqlConnection conn = new SqlConnection(sqlconn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("sp_BSreport", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userName", username);
            da = new SqlDataAdapter(cmd);

            if (dts != null)
                dts.Clear();
            da.Fill(dts);

            string list = JsonConvert.SerializeObject(dts);

            return list;
        }
    }   
}