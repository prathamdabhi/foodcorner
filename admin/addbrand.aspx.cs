using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;

namespace foodcorner
{
    public partial class addbrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrandRepeater();
            }
        }

        private void BindBrandRepeater()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from brands", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrbrand.DataSource = dt;
                        rptrbrand.DataBind();
                    }
                }
            }
        }

        protected void btnbrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into brands (name) Values('" + txtbrand.Text  + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Brand Add successfully done'); </script>");
                txtbrand.Text = string.Empty;
                con.Close();
                /*
                lblmsg.Text = "Registeration successfully done";
                lblmsg.ForeColor = System.Drawing.Color.Green;
                */
                txtbrand.Focus();


            }


        }
        
}
}