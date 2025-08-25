using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo2
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            // Server-side email format validation
            if (!Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$"))
            {
                lblMessage.Text = "Please enter a valid email address.";
                return;
            }

            // Simulate checking if email exists in the system
            // For demo, assume any email is valid
            // Simulate sending password reset email
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "If this email is registered, a password reset link has been sent.";
        }
    }
}