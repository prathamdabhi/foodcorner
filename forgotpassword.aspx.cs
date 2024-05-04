using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace foodcorner
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnresetpwd_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["users"].ConnectionString)) 
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from users where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    string myGUID = Guid.NewGuid().ToString();
                    int uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into forgetpass(id,uid,RequestDateTime) values('" + myGUID + "','" + uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    // Send Reset Link Via Email

                    string toemailaddress = dt.Rows[0][3].ToString();
                    string username = dt.Rows[0][1].ToString();
                    string emailbody = "Hi, "+username + ",<br /><br />Clink the link below to reset your password<br /><br />https://localhost:44330/recoverypassword.aspx?uid="+myGUID;

                    MailMessage PassRecMail = new MailMessage("prathamdabhi321@gmail.com", toemailaddress);

                    PassRecMail.Body = emailbody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset password";
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
                    smtp.Credentials = new NetworkCredential()
                    {
                        UserName = "YourEmail@gmail.com",
                        Password = "Your Password"
                    };
                    smtp.EnableSsl = true;
                    smtp.Send(PassRecMail);

                    //
                    lblpwd.Text = "Reset Link Send I Check Your Email for Reset Password";
                    lblpwd.ForeColor = System.Drawing.Color.Green;
                    txtemail.Text = string.Empty;
                }
                else
                {
                    lblpwd.Text = "Oops! This Email Does Not Exist .. Try Again";
                    lblpwd.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}