using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace MedReportSpace
{
    public partial class General_Prescription : System.Web.UI.Page
    {
        string Fullname;
        string Username;
        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           // Session["username"] = "pratik1234";
            GPreport_grdview.DataBind();
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection(sqlconn);
            try
            {
                string FilePath;
                string FileName = Path.GetFileName(genPrecReport_upload.PostedFile.FileName);
                genPrecReport_upload.SaveAs(Server.MapPath("Gp_report_Images/" + FileName));
                FilePath = "~/Gp_report_Images/" + FileName;
                FullNameInsertion();
                con.Open();
                string insertQuery = "insert into General_Prec_Reports(full_Name,userName,labName,[descr],drName,Rp_Date,img_link)values('"+ Fullname +"','"+ Username +"','"+ labName_txt.Text.Trim() +"','"+ desc_txt.Text.Trim() +"','"+ drName_txt.Text.Trim() +"','"+ reportDate_dt.Text.ToString() +"','"+ FilePath +"');";
                cmd = new SqlCommand(insertQuery, con);
                cmd.CommandType = System.Data.CommandType.Text;
                int add = cmd.ExecuteNonQuery();
                if (add > 0)
                {
                    Response.Write("<script> alert('Report Added SuccessFully')</script>");
                    GPreport_grdview.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message.ToString() + "')</script>");
            }
        }


        public void FullNameInsertion()
        {
            SqlConnection con = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                con.Open();
                string query = "Select * from user_Details where user_Name='" + Session["username"].ToString() + "';";
                cmd = new SqlCommand(query, con);
                var dr = cmd.ExecuteReader();
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        Fullname = dr["full_Name"].ToString();
                        Username = dr["user_Name"].ToString();
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

        protected void cmdDownLoad_Click(object sender, EventArgs e)
        {
            Button myBut = sender as Button;
            GridViewRow gRow = myBut.NamingContainer as GridViewRow;

            string strFileOnly = gRow.Cells[4].Text;
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
    