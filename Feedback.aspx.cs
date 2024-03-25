using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodcorner
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            high.Click += Button_Click;
            high2.Click += Button_Click;
            midum.Click += Button_Click;
            midum2.Click += Button_Click;
            low.Click += Button_Click;
            lowest.Click += Button_Click;
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            // Determine which button triggered the event
            Button clickedButton = (Button)sender;

            // Increase the font size of the clicked button
            clickedButton.Style["font-size"] = "40px";

            // Optionally, you can reset the font size of other buttons
            ResetButtonSizes(clickedButton.ID);
        }
        private void ResetButtonSizes(string clickedButtonID)
        {
            // Reset the font size of all buttons except the clicked one
            foreach (Control control in Controls)
            {
                if (control is Button button && button.ID != clickedButtonID)
                {
                    button.Style["font-size"] = "20px";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThankYou.aspx");
        }
    }
}