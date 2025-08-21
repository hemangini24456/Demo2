using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo2
{
    public partial class frm_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Dummy credentials (for demo)
            if (username == "admin" && password == "password123")
            {
                // Successful login
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                // Failed login
                lblMessage.Text = "Invalid username or password.";
            }
        }

    }
}