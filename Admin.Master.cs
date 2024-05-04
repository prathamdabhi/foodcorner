using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodcorner
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null) { 
            
            adminlogout.Visible = true;
            }
            else { adminlogout.Visible = false; }
        }

        protected void adminlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
            Session["Email"] = null;
        }
    }
}