using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodcorner
{
    public partial class Testing : System.Web.UI.Page
    {
        private string s;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            s = Convert.ToString(Request.Cookies["aa"].Value);
            string[] strarr = s.Split(',');
            for(int i=0; i<strarr.Length; i++)
            {
                Response.Write(strarr[i].ToString());
                Response.Write("<br>");
            }
        }
    }
}