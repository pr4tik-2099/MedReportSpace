using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace MedReportSpace
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string UserName;
        String FullName;
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            BsReport_Gridview.DataBind();
        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            if(labName_txt.Text == "")
            {
                Response.Write("<script>alert('Please Fill necessary Details')</script>");
            }
            else 
            {
                SqlConnection conn = new SqlConnection(sqlconn);
                SqlCommand cmd;
                try 
                {
                    conn.Open();
                    string FilePath;
                    string FileName = Path.GetFileName(BSreport_upload.PostedFile.FileName);
                    BSreport_upload.SaveAs(Server.MapPath("BS_report_Images/"+FileName));
                    FilePath = "~/BS_report_Images/" + FileName;
                    FullNameInsertion();
                    string insertQuery = "insert into Blood_Sugar_Reports(full_Name,userName,labName,BS_lvl,Rp_Date,img_Link)values('" + FullName + "','" + UserName + "','" + labName_txt.Text.ToString() + "','" + BSlvl_txt.Text.ToString() + "','" + BSreportDate_dt.Text.ToString() + "','" + FilePath + "');";
                    cmd = new SqlCommand(insertQuery, conn);
                    cmd.CommandType = CommandType.Text;
                    int add = cmd.ExecuteNonQuery();
                    if (add > 0) 
                    {
                        Response.Write("<script> alert('Report Added SuccessFully')</script>");
                        BsReport_Gridview.DataBind();
                    }
                }
                catch (Exception ex) 
                {
                    Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
                }
            }
        }

        void FullNameInsertion()
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            SqlCommand cmd;
            try
            {
                conn.Open();
                string query = "Select * from User_signUp_Details where user_Name='" + Session["username"].ToString() + "';";
                cmd = new SqlCommand(query,conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                UserName = dt.Rows[0]["user_Name"].ToString();
                FullName = dt.Rows[0]["full_Name"].ToString();
            }
            catch (Exception ex) 
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
        }
    }
}