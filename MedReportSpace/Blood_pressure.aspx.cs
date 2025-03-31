using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace MedReportSpace
{
    public partial class Blood_pressure : System.Web.UI.Page
    {
        string FullName;
        string UserName;

        string sqlconn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"]= "pratik1234";
            BPreport_GridView.DataBind();
        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            if (labName_txt.Text == "")
            {
                Response.Write("<script>alert('Please Fill necessary Details')</script>");
            }
            else
            {

                SqlConnection con = new SqlConnection(sqlconn);
                SqlCommand cmd = new SqlCommand();
                try
                {
                    string FilePath;
                    string FileName = Path.GetFileName(BPreport_Upload.PostedFile.FileName);
                    BPreport_Upload.SaveAs(Server.MapPath("BP_report_Images/" + FileName));
                    FilePath = "~/BP_report_Images/" + FileName;
                    FullNameInsertion();
                    con.Open();
                    string insertQuery = "insert into Blood_Pressure_Reports(full_Name,userName,labName,BP_mm,BP_hg,Rp_Date,img_link) values('" + FullName + "','" + UserName + "','" + labName_txt.Text.ToString() + "','" + Bpmm.Text.ToString() + "','" + Bphg.Text.ToString() + "','" + reportDate_dt.Text.ToString() + "','" + FilePath + "');";
                    cmd = new SqlCommand(insertQuery, con);
                    cmd.CommandType = CommandType.Text;
                    int add = cmd.ExecuteNonQuery();
                    if (add > 0)
                    {
                        Response.Write("<script> alert('Report Added SuccessFully')</script>");
                        BPreport_GridView.DataBind();

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

        }

        void FullNameInsertion()
        {
            SqlConnection conn = new SqlConnection(sqlconn);
            SqlCommand cmd = new SqlCommand();
            try
            {
                conn.Open();
                string Query = "Select * from user_Details where user_Name ='" + Session["username"].ToString() + "';";
                cmd = new SqlCommand(Query, conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                FullName = dt.Rows[0]["full_Name"].ToString();
                UserName = dt.Rows[0]["user_Name"].ToString();

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