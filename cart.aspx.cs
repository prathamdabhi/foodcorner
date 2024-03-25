using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace foodcorner
{
    public partial class cart : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindCart();
                

            }
        }

        public void BindCart()
        { 
            DataTable dt = Session["cart"] as DataTable;
            
            rptrcart.DataSource = dt;
            rptrcart.DataBind();
        }

        private void BindProductCart()
        {
            DataTable dt = new DataTable();
            if (Request.Cookies["Cartpid"] != null)
            {
                
                string Cookiedata = Request.Cookies["Cartpid"].Value.Split('=')[1];
                string[] CookieDataArray = Cookiedata.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    h4noitem.InnerText = "My Cart("+ CookieDataArray + " items)";
                    for (int i=0; i<CookieDataArray.Length; i++)
                    {
                        string pid = CookieDataArray[i].ToString().Split('-')[0];
                        string sizeID= CookieDataArray[i].ToString().Split('-')[1];
                        using (SqlConnection con = new SqlConnection(cs))
                        {
                            SqlCommand cmd = new SqlCommand("select A.* from product A cross apply(select top 1,B.name,extention from productimages B where B.pid=A.pid) where A.pid=" + pid + "'", con)
                            {
                                CommandType = CommandType.StoredProcedure
                            };
                            cmd.Parameters.AddWithValue("@pid", pid);
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                               
                                sda.Fill(dt);
                               
                                
                            }

                        }
                    }
                }
                rptrcart.DataSource = dt;
                rptrcart.DataBind();
            }
            else
            {

            }
        }

        protected void buy_now_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("checkout.aspx");
        }


        protected void remove_product_Click(object sender, EventArgs e)
        {
            try
            {
                Button btnremove = (Button)sender;
                ListViewItem Item = (ListViewItem)btnremove.BindingContainer;
                Label lblpid = (Label)Item.FindControl("lblpid");
                DataTable dt = Session["cart"] as DataTable;

                for (int i = dt.Rows.Count - 1; i >= 0; i--)
                {
                    DataRow dr = dt.Rows[i];
                    if (dr["pid"].ToString() == lblpid.Text)
                    {
                        dr.Delete();
                    }
                }
                BindCart();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }




        }


        protected void drop_qty_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                //int selectedValue = Convert.ToInt32(drop_qty.SelectedValue);
                //int price = Convert.ToInt32(lbl_price.Text);
                //int totalPrice = selectedValue * price;
                //lbl_price.Text = totalPrice.ToString();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            
        }


    }
}