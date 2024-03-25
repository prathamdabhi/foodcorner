using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace foodcorner
{
    public partial class addcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategoryReapter();
        }

        private void BindCategoryReapter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from category", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrcategory.DataSource = dt;
                        rptrcategory.DataBind();
                    }
                }
            }
        }

        protected void btncategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into category (categoryname) Values('" + txtcategory.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Category Add successfully done'); </script>");
                txtcategory.Text = string.Empty;
                con.Close();
                /*
                lblmsg.Text = "Registeration successfully done";
                lblmsg.ForeColor = System.Drawing.Color.Green;
                */
                txtcategory.Focus();
            }
        }
    }
}