using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace foodcorner
{
    public partial class addproduct : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //when page first time run than this code execute
            if (!IsPostBack)
            {
                BindBrand();
                BindCategory();
                BindProductRepeater();


            }
        }

        private void BindCategory()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from category", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "categoryname";
                    ddlCategory.DataValueField = "categoryid";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindBrand()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from brands", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlBrand.DataSource = dt;
                    ddlBrand.DataTextField = "name";
                    ddlBrand.DataValueField = "brandid";
                    ddlBrand.DataBind();
                    ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("sp_InsetProduct", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@pname", txtproductname.Text);
                    cmd.Parameters.AddWithValue("@pprice", txtprice.Text);
                    cmd.Parameters.AddWithValue("@pselprice", txtselling.Text);
                    cmd.Parameters.AddWithValue("@pbrandid", ddlBrand.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@pcategoryid", ddlCategory.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@pdescription", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@status", "Instock");
                    if (chfd.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@freedelivery", 1.ToString());

                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@freedelivery", 0.ToString());
                    }

                    if (COD.Checked == true)
                    {
                        cmd.Parameters.AddWithValue("@COD", 1.ToString());

                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@COD", 0.ToString());
                    }
                    con.Open();
                    Int64 pid = Convert.ToInt64(cmd.ExecuteScalar());

                    //1st upload
                    if (fuimg1.HasFile)
                    {
                        string savepath = Server.MapPath("~/image/product-images/") + pid;
                        if (!Directory.Exists(savepath))
                        {
                            Directory.CreateDirectory(savepath);
                        }
                        string Extention = Path.GetExtension(fuimg1.PostedFile.FileName);
                        fuimg1.SaveAs(savepath + "\\" + txtproductname.Text.ToString().Trim() + Extention);

                        SqlCommand cmd2 = new SqlCommand("insert into productimages values('" + pid + "','" + txtproductname.Text.ToString().Trim() + "','" + Extention + "')", con);
                        cmd2.ExecuteNonQuery();
                    }
                    //2nd upload
                    if (fuimg2.HasFile)
                    {
                        string savepath = Server.MapPath("~/image/product-images/") + pid;
                        if (!Directory.Exists(savepath))
                        {
                            Directory.CreateDirectory(savepath);
                        }
                        string Extention = Path.GetExtension(fuimg2.PostedFile.FileName);
                        fuimg2.SaveAs(savepath + "\\" + txtproductname.Text.ToString().Trim() + "02" + Extention);

                        SqlCommand cmd3 = new SqlCommand("insert into productimages values('" + pid + "','" + txtproductname.Text.ToString().Trim() + "02" + "','" + Extention + "')", con);
                        cmd3.ExecuteNonQuery();
                    }
                    //3rd upload
                    if (fuimg3.HasFile)
                    {
                        string savepath = Server.MapPath("~/image/product-images/") + pid;
                        if (!Directory.Exists(savepath))
                        {
                            Directory.CreateDirectory(savepath);
                        }
                        string Extention = Path.GetExtension(fuimg3.PostedFile.FileName);
                        fuimg3.SaveAs(savepath + "\\" + txtproductname.Text.ToString().Trim() + "03" + Extention);

                        SqlCommand cmd4 = new SqlCommand("insert into productimages values('" + pid + "','" + txtproductname.Text.ToString().Trim() + "03" + "','" + Extention + "')", con);
                        cmd4.ExecuteNonQuery();
                    }
                    //4th upload
                    if (fuimg4.HasFile)
                    {
                        string savepath = Server.MapPath("~/image/product-images/") + pid;
                        if (!Directory.Exists(savepath))
                        {
                            Directory.CreateDirectory(savepath);
                        }
                        string Extention = Path.GetExtension(fuimg4.PostedFile.FileName);
                        fuimg4.SaveAs(savepath + "\\" + txtproductname.Text.ToString().Trim() + "04" + Extention);

                        SqlCommand cmd5 = new SqlCommand("insert into productimages values('" + pid + "','" + txtproductname.Text.ToString().Trim() + "04" + "','" + Extention + "')", con);
                        cmd5.ExecuteNonQuery();
                    }
                    //5th pload
                    if (fuimg5.HasFile)
                    {
                        string savepath = Server.MapPath("~/image/product-images /") + pid;
                        if (!Directory.Exists(savepath))
                        {
                            Directory.CreateDirectory(savepath);
                        }
                        string Extention = Path.GetExtension(fuimg5.PostedFile.FileName);
                        fuimg5.SaveAs(savepath + "\\" + txtproductname.Text.ToString().Trim() + "05" + Extention);

                        SqlCommand cmd6 = new SqlCommand("insert into productimages values('" + pid + "','" + txtproductname.Text.ToString().Trim() + "05" + "','" + Extention + "')", con);
                        cmd6.ExecuteNonQuery();
                    }
                    lblSuccess.Text = "Product Added Successfully!";
                    lblError.Text = "";


                }
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
                lblSuccess.Text = "";
                lblError.Text = ex.Message;
                throw;
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
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }

    }
}