using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace foodcorner
{
    public partial class register : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        double val = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            autoid();
        }
        private void autoid()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(uid)from [users]", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            uidr.Text = val + i.ToString();

        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into users (uid,username,password,Email,usertype) Values('" + uidr.Text + "','" + name.Text + "','" + password.Text + "','" + email.Text + "','User')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registeration successfully done'); </script>");
                    clr();
                    con.Close();
                    lblmsg.Text = "Registeration successfully done";
                    lblmsg.ForeColor = System.Drawing.Color.Green;

                }
                Response.Redirect("~/login.aspx");
            }

            else
            {
                Response.Write("<script> alert('Registeration faild'); </script>");
                lblmsg.Text = "All Field Are Mendatory";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if (name.Text == "")
            {
                Response.Write("<script> alert('fill user name'); </script>");
                name.Focus();
                return false;
            }
            else if (password.Text != conform.Text)
            {
                Response.Write("<script> alert('Password not Valid'); </script>");
                password.Focus();
                return false;
            }
            else if (email.Text == "")
            {
                Response.Write("<script> alert('Email not Valid'); </script>");
                email.Focus();
                return false;
            }
            return true;
        }
        private void clr()
        {
            name.Text = string.Empty;
            password.Text = string.Empty;
            email.Text = string.Empty;
            conform.Text = string.Empty;
        }
    }
}