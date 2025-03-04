using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace MedReportSpace
{
    public partial class bpreportimg : System.Web.UI.Page
    {
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            SqlCommand cmd;
            try
            {
                conn.Open();
                string query = "Select img_link from Blood_Pressure_Reports where userName='abhi45'";
                cmd = new SqlCommand(query, conn);
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }

        }
    }
}