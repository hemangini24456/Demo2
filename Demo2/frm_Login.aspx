<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="Demo2.frm_Login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Login Page</title>
    <link rel="stylesheet" type="text/css" href="../css/Login.css" />
    <script type="text/javascript">
        function togglePassword() {
            var pwd = document.getElementById('<%= txtPassword.ClientID %>');
            var btn = document.getElementById('togglePwdBtn');
            if (pwd.type === "password") {
                pwd.type = "text";
                btn.innerText = "Hide";
            } else {
                pwd.type = "password";
                btn.innerText = "Show";
            }
        }
        function validateLogin() {
            var username = document.getElementById('<%= txtUsername.ClientID %>').value.trim();
            var password = document.getElementById('<%= txtPassword.ClientID %>').value.trim();
            if (username === "") {
                alert("Username is required.");
                return false;
            }
            if (password === "") {
                alert("Password is required.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bank-login-container">
            <div class="bank-logo">

                <img src="images/bank_logo.png" alt="Bank Logo" />
            </div>
            <h2>Secure Login</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="login-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="login-label"></asp:Label>
                <%--<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="login-input"></asp:TextBox>--%>
                <div style="display: flex; align-items: center;">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="login-input" Style="flex: 1;"></asp:TextBox>
                    <button type="button" id="togglePwdBtn" onclick="togglePassword()" class="toggle-password-btn" style="margin-left: 8px;">Show</button>
                </div>
            </div>
            <div class="form-group">
                <asp:CheckBox ID="chkRememberMe" runat="server" CssClass="remember-me-checkbox" />
                <label for="chkRememberMe" class="remember-me-label">Remember Me</label>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" OnClick="btnLogin_Click" OnClientClick="return validateLogin();" />
            <div class="form-group" style="text-align: right; margin-top: 10px;">
                <a href="ForgotPassword.aspx" class="forgot-password-link">Forgot Password?</a>
            </div>
            <div class="form-group" style="text-align: right; margin-top: 5px;">
                <a href="FrmRegister.aspx" class="create-user-link">Create User</a>
            </div>
        </div>
    </form>
</body>
</html>
