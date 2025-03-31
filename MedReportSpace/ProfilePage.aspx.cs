using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MedReportSpace
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["username"] = "pratik1234";
                if (Session["username"] == null || Session["username"] == "")
                {
                    Response.Redirect("Login.aspx");
                   
                }
                else
                {
                    ShowDetails();
                }
            }
            
        }

        protected void update_btn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    string UpdateQuery = "Update user_Details SET full_Name = '" + name_txt.Text.Trim() + "', email_Id='" + email_txt.Text.Trim() + "', gender='" + Gender_ddl.SelectedValue + "', contact_Number='" + pnum_txt.Text.Trim() + "', state= '" + State_list.SelectedValue + "', pincode='" + pincode_txt.Text.Trim() + "', user_Address='" + address_txt.Text.Trim() + "' Where user_Name='" + Session["username"].ToString() + "';";
                    cmd = new SqlCommand(UpdateQuery, con);
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        Response.Write("<script> alert('SUCCESS')</script>");
                    }
                    else
                    {
                        Response.Write("<script> alert('not working')</script>");

                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
        }

        void ShowDetails()
        {
            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                con.Open();
                string showQuery = "SELECT * FROM user_Details WHERE user_Name='" + Session["username"].ToString() + "';";
                cmd = new SqlCommand(showQuery, con);
                var dr = cmd.ExecuteReader();
                if (dr != null)
                {
                    if (dr.Read())
                    {
                        name_txt.Text = dr["full_Name"].ToString();
                        email_txt.Text = dr["email_Id"].ToString();
                        dob_txt.Text = Convert.ToDateTime(dr["birth_Date"]).ToString("dd-MM-yyyy"); ;
                        Gender_ddl.SelectedValue = dr["gender"].ToString();
                        pnum_txt.Text = dr["contact_Number"].ToString();
                        State_list.SelectedValue = dr["state"].ToString();
                        city_txt.Text = dr["city"].ToString();
                        pincode_txt.Text = dr["pincode"].ToString();
                        address_txt.Text = dr["user_Address"].ToString();
                        uname_txt.Text = dr["user_Name"].ToString();
                        upass_txt.Text = dr["user_password"].ToString();
                        age_txt.Text = dr["age"].ToString();
                        height_txt.Text = dr["height"].ToString();
                        Weight_txt.Text = dr["weight"].ToString();
                        hypertension_chk.Checked = Convert.ToBoolean(dr["hypertension"]);
                        diabetes_chk.Checked = Convert.ToBoolean(dr["diabetes"]);
                        smoking_chk.Checked = Convert.ToBoolean(dr["smoking"]);

                    }
                    else 
                    {
                        
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
        }

        protected void bs_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    string UpdateQuery = "Update user_Details SET age='"+ age_txt.Text +"',height='"+ height_txt.Text +"',weight='"+ Weight_txt.Text +"', hypertension = '" + hypertension_chk.Checked + "', diabetes='"+ diabetes_chk.Checked +"',smoking='"+ smoking_chk.Checked +"' Where user_Name='" + Session["username"].ToString() + "';";
                    cmd = new SqlCommand(UpdateQuery, con);
                    int result = cmd.ExecuteNonQuery();
                    if (result > 0)
                    {
                        Response.Write("<script> alert('SUCCESS')</script>");
                    }
                    else
                    {
                        Response.Write("<script> alert('not working')</script>");
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
            finally
            {
                cmd.Dispose();
                con.Close();
            }
        }
    }
}