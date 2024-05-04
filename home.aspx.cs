using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodcorner
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Email"] != null)
            {
                Response.Write("<script> alert('Login successfully done'); </script>");
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void view_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }
    }
}