using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedReportSpace
{
    public partial class Login : System.Web.UI.Page
    {
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand cmd;
            try 
            {
                con.Open();
                string UserloginQuery = "Select * from User_signUp_Details where user_Name ='" + username_txt.Text.ToString() + "' AND user_password='" + password_txt.Text.ToString() + "';";
                cmd = new SqlCommand(UserloginQuery,con);
                var dr = cmd.ExecuteReader();
                if(dr != null)
                {
                    if (dr.Read())
                    {
                        Session["role"] = "user";
                        Session["username"] = dr["user_Name"].ToString();
                        Response.Redirect("Homepage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Incorrect Username or Password')</script>");
                    }

                }
                else
                {
                    Response.Write("<script>alert('not working')</script>");
                }
            }
            catch(Exception ex) 
            {
                Response.Write("<script>" + ex.Message+ "</script>");
            }
        }
    }
}