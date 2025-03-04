using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedReportSpace
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                signUp_btn.ForeColor = System.Drawing.Color.Yellow;
                
            }
            else if (Session["role"].Equals("user"))
            {
                login_btn.Visible = false;
                user_name.Visible = true;
                logout_btn.Visible = true;
                user_name.Text = Session["username"].ToString();
                user_name.ForeColor = System.Drawing.Color.Cyan;
                signUp_btn.Visible = false;
            }
        }

        protected void logout_btn_Click1(object sender, EventArgs e)
        {
            Session["role"] = null;
            Session["username"] = null;
            Response.Redirect("Homepage.aspx");
        }
    }
}