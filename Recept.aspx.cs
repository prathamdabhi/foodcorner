using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace foodcorner
{
    public partial class Recept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblproduct.Text = (string)Session["productname"];
            lblname.Text = Request.QueryString["Full Name"];
            lblmail.Text = Request.QueryString["Email"];
            lbldate.Text = Request.QueryString["Date"];
            lbladd.Text = Request.QueryString["Address"];
            lblcity.Text = Request.QueryString["City"];
            lblstate.Text = Request.QueryString["State"];
            lblmobile.Text = Request.QueryString["Mobile No"];
            lblamount.Text = (string)Session["total"];
        }

        protected void go_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");

        }

        protected void invoice_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Recept.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10, 100f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparse.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}