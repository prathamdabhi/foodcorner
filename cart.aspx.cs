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
using foodcorner.admin;

namespace foodcorner
{
    public partial class cart : System.Web.UI.Page
    {

        public int grandTotal = 0;
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cart"] != null)
                {
                    BindCart();
                }
            }

        }

        public void BindCart()
        {
            DataTable dt = Session["cart"] as DataTable;

            GridView1.DataSource = dt;
            GridView1.DataBind();
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                DropDownList ddlQty = (DropDownList)GridView1.Rows[i].FindControl("ddlQty");
                Label lblTotal = (Label)GridView1.Rows[i].FindControl("lblTotal");
                Label products = (Label)GridView1.Rows[i].FindControl("productname");
                ddlQty.SelectedValue = dt.Rows[i]["qty"].ToString();
                int qty = Convert.ToInt32(dt.Rows[i]["qty"].ToString());
                int price = Convert.ToInt32(dt.Rows[i]["pprice"].ToString().Remove(dt.Rows[i]["pprice"].ToString().Length - 5));
                int total = qty * price;
                lblTotal.Text = total.ToString();
                grandTotal += total;
                lblFinalTotal.Text = grandTotal.ToString();
                Session["productname"] = products.Text;


            }
            


        }



        protected void buy_now_Click(object sender, EventArgs e)
        {
            DataTable dt = Session["cart"] as DataTable;

            GridView1.DataSource = dt;
            GridView1.DataBind();

            string productNames = "";

            foreach (GridViewRow row in GridView1.Rows)
            {
                Label products = (Label)row.FindControl("productname");
                if (products != null)
                {
                    productNames += products.Text + ", ";
                }
            }

            // Remove the last comma and space
            if (!string.IsNullOrEmpty(productNames))
            {
                productNames = productNames.Remove(productNames.Length - 2);
            }

            Session["productname"] = productNames;

            Session["total"] = lblFinalTotal.Text;
            Response.Redirect("checkout.aspx");
        }

        protected void lnkDelete_OnCommand(object sender, CommandEventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow rows = (GridViewRow)lnk.NamingContainer;
            int pid = Convert.ToInt32(e.CommandArgument);
            DataTable dt = Session["cart"] as DataTable;

            for (int i = dt.Rows.Count - 1; i >= 0; i--)
            {
                DataRow dr = dt.Rows[i];
                if (dr["pid"].ToString() == pid.ToString())
                {
                    dr.Delete();
                }
            }
            BindCart();

        }

        protected void ddlQty_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = (DropDownList)sender;
            GridViewRow rows = (GridViewRow)ddl.NamingContainer;

            Label lblPID = (Label)rows.FindControl("lblPID");

            DropDownList ddlQty = (DropDownList)rows.FindControl("ddlQty");

            DataTable dt = new DataTable();

            if (Session["cart"] != null)
            {
                dt = (DataTable)Session["cart"];

                for (int i = dt.Rows.Count - 1; i >= 0; i--)
                {
                    DataRow dr = dt.Rows[i];
                    if (dr["pid"].ToString() == lblPID.Text)
                    {

                        dr["qty"] = ddlQty.SelectedValue;

                    }
                }
            }
            BindCart();
        }

    }
}