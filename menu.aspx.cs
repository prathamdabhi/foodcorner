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
    public partial class menu : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        int pid;






        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProductRepeater();
                


            }
        }

        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("BindAllProducts ", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        lvproduct.DataSource = dt;
                        lvproduct.DataBind();
                    }
                }
            }
        }
        protected void lvproduct_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                Label lblstatus = (Label)e.Item.FindControl("lblstatus");

                // Set the forecolor based on lblstatus.Text value
                if (lblstatus.Text == "InStock")
                {
                    lblstatus.ForeColor = System.Drawing.Color.Green;
                }
                else if (lblstatus.Text == "Out Of The Stock")
                {
                    lblstatus.ForeColor = System.Drawing.Color.Red;
                }
            }
        }


        protected void btnadd_Click(object sender, EventArgs e)
        {
            Button btnadd = (Button)sender;
            ListViewItem Item = (ListViewItem)btnadd.BindingContainer;
            Label lblPName = (Label)Item.FindControl("lblPName");
            Label lblPrice = (Label)Item.FindControl("lblPrice");
            Label lblpid = (Label)Item.FindControl("lblpid");
            Label lblImageName = (Label)Item.FindControl("lblImageName");
            Label lblstatus = (Label)Item.FindControl("lblstatus");
            DataTable dt = new DataTable();

            if (lblstatus.Text == "Out Of The Stock")
            {
                // Display alert message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "OutOfStockAlert", "alert('This product is currently out of stock.');", true);
                return;
            }
            if (Session["cart"] == null)
            {
                dt.Columns.Add("pid", typeof(string));
                dt.Columns.Add("pname", typeof(string));
                dt.Columns.Add("pprice", typeof(string));
                dt.Columns.Add("qty", typeof(string));
                dt.Columns.Add("ImageName", typeof(string));
            }
            else
            {
                dt = (DataTable)Session["cart"];

                for (int i = dt.Rows.Count - 1; i >= 0; i--)
                {
                    DataRow dr = dt.Rows[i];
                    if (dr["pid"].ToString() == lblpid.Text)
                    {

                        Response.Write("<script>alert('This product is already present in cart!')</script>");
                        return;

                    }
                }


            }

            DataRow dRow;
            dRow = dt.NewRow();
            dRow["pid"] = lblpid.Text;
            dRow["pname"] = lblPName.Text;
            dRow["pprice"] = lblPrice.Text;
            dRow["qty"] = 1;
            dRow["ImageName"] = lblImageName.Text;
            dt.Rows.Add(dRow);

            Session["cart"] = dt;
            Session["pname"] = lblPName.Text;
            Session["price"] = lblPrice.Text;
        }

       

        protected void drop_qty_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {

            }
        }

        
    }
}
