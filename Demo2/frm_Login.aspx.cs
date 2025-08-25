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
            bool rememberMe = chkRememberMe.Checked;

            // Dummy credentials (for demo)
            if (username == "admin" && password == "password123")
            {
                // Successful login
                if (rememberMe)
                {
                    // Example: Set a persistent cookie (for demo purposes)
                    HttpCookie cookie = new HttpCookie("BankUser", username);
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }
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