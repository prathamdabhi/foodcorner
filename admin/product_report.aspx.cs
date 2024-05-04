using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace foodcorner.admin
{
    public partial class product_report : System.Web.UI.Page
    {
        public static String cs = ConfigurationManager.ConnectionStrings["users"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void load_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Select * from product", con);
            SqlDataAdapter s = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            s.Fill(dt);

            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("products", dt);
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("product_info.rdlc");
            ReportViewer1.LocalReport.DataSources.Add(rds);
            ReportViewer1.LocalReport.Refresh();

        }
    }
}