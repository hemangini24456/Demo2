<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="Demo2.frm_Login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Login Page</title>
    <link rel="stylesheet" type="text/css" href="../css/Login.css" />
</head>
<body>
    <form id="form1" runat="server">        
        <div class="bank-login-container">
            <div class="bank-logo">
                <img src="../images/bank-logo.png" alt="Bank Logo" />
            </div>
            <h2>Secure Login</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="login-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="login-input"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-button" OnClick="btnLogin_Click" />
            <div class="form-group" style="text-align:right; margin-top:10px;">
                <a href="ForgotPassword.aspx" class="forgot-password-link">Forgot Password?</a>
            </div>
        </div>
    </form>
</body>
</html>