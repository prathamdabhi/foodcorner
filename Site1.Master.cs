using foodcorner.admin;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodcorner
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            user_name.Text = (String)Session["name"];
            

        }
        public void BindCartNumber()
        {
            if (Session["cart"] != null) 
            {
                DataTable dt = Session["cart"] as DataTable;
                lblCount.Text = dt.Rows.Count.ToString();
            }
            else
            {
                lblCount.Text = "0";
            }
        }

        protected void adminlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
            Session["Email"] = null;
        }

        protected void profile_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("profile.aspx");
        }

        

        //protected void pf_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("profile.aspx");
        //}

    }
}