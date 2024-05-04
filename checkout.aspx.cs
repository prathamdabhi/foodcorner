using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace foodcorner
{
    public partial class checkout : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        double val = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["total"] != null)
            {
                grandTotal.Text = Session["total"].ToString();
            }

            autoid();
        }
        private void autoid()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(purchaseID)from [tblpurches]", con);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            i++;
            lblid.Text = val + i.ToString();

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            string paymentType = "credit";
            string paymentStatus = "Paid";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[tblpurches]
           ([purchaseID]
           ,[uid]
           ,[pid]
           ,[name]
           ,[email]
           ,[mobile_number]
           ,[address]
           ,[city]
           ,[state]
           ,[zipcode]
           ,[amount]
           ,[totalamount]
           ,[paymenttype]
           ,[paymentstatus]
           ,[date_of_purchase])
     VALUES
           ('" + lblid.Text + "','" + "1" + "','" + "1" + "','" + checktxt.Text + "','" + checkmail.Text +
                   "','" + mno.Text + "','" + checkaddress.Text + "','" +
                  checkcity.Text + "','" + checkstate.Text + "','" + checkzip.Text + "','" + "200" + "','" +
                   "200" + "','" + paymentType + "','" + paymentStatus + "','" + date.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('This product is added!')</script>");
            Response.Redirect("Recept.aspx?Full Name=" + checktxt.Text + "&Email=" + checkmail.Text + "&Date=" + date.Text + "&Address=" + checkaddress.Text +
              "&City=" + checkcity.Text + "&State=" + checkstate.Text + "&Mobile No=" + mno.Text);
        }
    }
}