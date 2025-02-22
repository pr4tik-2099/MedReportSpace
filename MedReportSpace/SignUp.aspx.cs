using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MedReportSpace
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // Here I have initalized connextion string to connect with dataBase //
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_btn_Click(object sender, EventArgs e)
        {
            if(uname_txt.Text == "" || upass_txt.Text == "" || dob_txt.Text=="" || Gender_ddl.Text =="" || pnum_txt.Text == "" || state_lbl.Text == "" || city_txt.Text == "" || pincode_txt.Text == "" || address_txt.Text== "" || uname_txt.Text == "" || upass_txt.Text == "") 
            {
                Response.Write("<script>alert('Please Fill the Form properly')</script>");
            }
            else 
            {
                bool CheckIfUserNameExist;

                SqlConnection con = new SqlConnection(sqlconn);
                SqlCommand cmd = new SqlCommand();
                try
                {
                    con.Open();
                    string sqlquery = "select * from User_signUp_Details where user_Name='" + uname_txt.Text.ToString() + "';";
                    cmd = new SqlCommand(sqlquery, con);
                    SqlDataAdapter sd = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sd.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        CheckIfUserNameExist = true;

                    }
                    else
                    {
                        CheckIfUserNameExist = false;
                    }

                    if (CheckIfUserNameExist)
                    {
                        Response.Write("<script>alert('This Username already Exist')</script>");
                    }
                    else
                    {
                        SignUp_InsertQuery();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>" + ex.Message + "<script>");
                }
                finally
                {
                    con.Close();
                    cmd.Dispose();
                }

            }

           
        }

        void SignUp_InsertQuery()
        {
            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                con.Open();
                string sqlquery = "insert into User_signUp_Details(full_Name, email_Id, birth_Date, gender, contact_Number, [state], [city], [pincode], [user_Address], [user_Name], [user_password]) values('" + name_txt.Text.ToString() + "','" + email_txt.Text.ToString() + "','" + dob_txt.Text.ToString() + "','" + Gender_ddl.Text.ToString() + "','" + pnum_txt.Text.ToString() + "','" + State_list.Text.ToString() + "','" + city_txt.Text.ToString() + "','" + pincode_txt.Text.ToString() + "','" + address_txt.Text.ToString() + "','" + uname_txt.Text.ToString() + "','" + upass_txt.Text.ToString() + "')";
                cmd = new SqlCommand(sqlquery, con);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script> alert('Success'); </script>");
                }
                else
                {
                    Response.Write("<script> alert('not Success'); </script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "'); </script>");
            }
            finally
            {
                con.Close();
                cmd.Dispose();
            }

        }

    }
}