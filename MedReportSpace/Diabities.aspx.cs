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
        string FullName;
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
                SqlCommand cmd = new SqlCommand();
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
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                }
            }
        }

        void FullNameInsertion()
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string query = "Select * from user_Details where user_Name='" + Session["username"].ToString() + "';";
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
            finally
            {
                cmd.Dispose();
                conn.Close();
            }
        }

        protected void cmdDownLoad_Click(object sender, EventArgs e)
        {
            Button myBut = sender as Button;
            GridViewRow gRow = myBut.NamingContainer as GridViewRow;

            string strFileOnly = gRow.Cells[3].Text;
            if (strFileOnly != "")
            {

                string strFile = "";
                strFile = Server.MapPath(@"" + strFileOnly);

                string sMineType = MimeMapping.GetMimeMapping(strFileOnly);
                Response.ContentType = sMineType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + strFileOnly);
                Response.TransmitFile(strFile);
                Response.End();
            }

        }
    }
}