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
    public partial class login : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetching user data from the database
                
                string query = "SELECT username FROM users WHERE uid = @uid"; // Adjust this query according to your database schema

                // Assuming you have stored the UserId of the currently logged-in user in a session variable
                int userId = Convert.ToInt32(Session["uid"]);

                using (SqlConnection connection = new SqlConnection(cs))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@uid", userId);

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        string username = reader["username"].ToString();
                        name.Text = username;
                    }
                    reader.Close();
                }
            }
        }
        
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from users where Email=@Email and Password=@password", con);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@password",password.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Session["name"] = name.Text;
                if (dt.Rows.Count !=  0)
                {
                    Session["USERID"] = dt.Rows[0]["uid"].ToString();
                    Session["USEREMAIL"] = dt.Rows[0]["email"].ToString();
                    string usertype;
                    usertype = dt.Rows[0][5].ToString().Trim();
                    if (usertype == "User")
                    {
                        Session["Email"] = email.Text;
                        Response.Redirect("~/home.aspx");
                    }
                    if (usertype == "Admin")
                    {
                        Session["Email"] = email.Text;
                        Response.Redirect("~/admin/adminhome.aspx");
                    }
                    Session["Email"] = email.Text;
                    Response.Redirect("~/home.aspx");
                    

                   
                }
                else
                {
                    Response.Write("<script> alert('Login fail'); </script>");
                }

                //Response.Write("<script> alert('Login successfully done'); </script>");
                clr();
                con.Close();
               // lblmsg.Text = "Registeration successfully done";
               // lblmsg.ForeColor = System.Drawing.Color.Green;

            }
        }
        
        private void clr()
        {
            email.Text = string.Empty;
            password.Text = string.Empty;
            email.Focus();
        }
    }
}