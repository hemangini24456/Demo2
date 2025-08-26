using System;
using System.Web;
using System.Web.UI.WebControls;
using Demo2;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Demo2.Tests
{
    [TestClass]
    public class frm_LoginTests
    {
        private frm_Login _loginPage;
        private Mock<TextBox> _txtUsername;
        private Mock<TextBox> _txtPassword;
        private Mock<CheckBox> _chkRememberMe;
        private Mock<Label> _lblMessage;
        private Mock<HttpResponse> _response;
        private Mock<HttpCookieCollection> _cookies;

        [TestInitialize]
        public void Setup()
        {
            _loginPage = new frm_Login();

            _txtUsername = new Mock<TextBox>();
            _txtPassword = new Mock<TextBox>();
            _chkRememberMe = new Mock<CheckBox>();
            _lblMessage = new Mock<Label>();
            _response = new Mock<HttpResponse>();
            _cookies = new Mock<HttpCookieCollection>();

            // Use reflection to set private fields
            typeof(frm_Login).GetField("txtUsername", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public)
                .SetValue(_loginPage, _txtUsername.Object);
            typeof(frm_Login).GetField("txtPassword", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public)
                .SetValue(_loginPage, _txtPassword.Object);
            typeof(frm_Login).GetField("chkRememberMe", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public)
                .SetValue(_loginPage, _chkRememberMe.Object);
            typeof(frm_Login).GetField("lblMessage", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public)
                .SetValue(_loginPage, _lblMessage.Object);
            typeof(frm_Login).GetField("Response", System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Public)
                .SetValue(_loginPage, _response.Object);

            _response.Setup(r => r.Cookies).Returns(_cookies.Object);
        }

        [TestMethod]
        public void btnLogin_Click_ValidCredentials_RedirectsToWelcome()
        {
            _txtUsername.Setup(t => t.Text).Returns("admin");
            _txtPassword.Setup(t => t.Text).Returns("password123");
            _chkRememberMe.Setup(c => c.Checked).Returns(false);

            bool redirected = false;
            _response.Setup(r => r.Redirect("Welcome.aspx")).Callback(() => redirected = true);

            _loginPage.btnLogin_Click(this, EventArgs.Empty);

            Assert.IsTrue(redirected);
        }

        [TestMethod]
        public void btnLogin_Click_ValidCredentials_RememberMe_SetsCookie()
        {
            _txtUsername.Setup(t => t.Text).Returns("admin");
            _txtPassword.Setup(t => t.Text).Returns("password123");
            _chkRememberMe.Setup(c => c.Checked).Returns(true);

            HttpCookie addedCookie = null;
            _cookies.Setup(c => c.Add(It.IsAny<HttpCookie>())).Callback<HttpCookie>(cookie => addedCookie = cookie);

            bool redirected = false;
            _response.Setup(r => r.Redirect("Welcome.aspx")).Callback(() => redirected = true);

            _loginPage.btnLogin_Click(this, EventArgs.Empty);

            Assert.IsNotNull(addedCookie);
            Assert.AreEqual("BankUser", addedCookie.Name);
            Assert.AreEqual("admin", addedCookie.Value);
            Assert.IsTrue(addedCookie.Expires > DateTime.Now);
            Assert.IsTrue(redirected);
        }

        [TestMethod]
        public void btnLogin_Click_InvalidCredentials_ShowsErrorMessage()
        {
            _txtUsername.Setup(t => t.Text).Returns("user");
            _txtPassword.Setup(t => t.Text).Returns("wrongpass");
            _chkRememberMe.Setup(c => c.Checked).Returns(false);

            string message = null;
            _lblMessage.SetupSet(l => l.Text = It.IsAny<string>()).Callback<string>(m => message = m);

            _loginPage.btnLogin_Click(this, EventArgs.Empty);

            Assert.AreEqual("Invalid username or password.", message);
        }
    }
}
