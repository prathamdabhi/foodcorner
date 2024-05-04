using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodcorner
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Assume you have a User object representing the currently logged-in user
                // You can replace this with your own logic to fetch user data
                User currentUser = GetUser();

                if (currentUser != null)
                {
                    lblUsername.Text = currentUser.Username;
                    lblEmail.Text = currentUser.Email;
                    //lblFirstName.Text = currentUser.FirstName;
                    //lblLastName.Text = currentUser.LastName;
                }
            }
        }

        private User GetUser()
        {
            // Example method to fetch user data from database or any other source
            // Replace this with your actual implementation
            // For demonstration purposes, I'm returning a hard-coded user
            return new User
            {
                Username = (String)Session["name"],
                Email = (String)Session["Email"],
                //FirstName = (String)Session["fname"],
                //LastName = (String)Session["lname"]
            };
        }

        // Define your User class here
        private class User
        {
            public string Username { get; set; }
            public string Email { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
        }
    }
}
    
