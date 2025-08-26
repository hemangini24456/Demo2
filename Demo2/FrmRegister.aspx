<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRegister.aspx.cs" Inherits="Demo2.FrmRegister" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link rel="stylesheet" type="text/css" href="../css/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="bank-login-container">
            <div class="bank-logo">
                <img src="../images/bank-logo.png" alt="Bank Logo" />
            </div>
            <h2>Create User Account</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="login-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="login-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="login-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="login-input"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="login-button" OnClick="btnRegister_Click"  />
            <div class="form-group" style="margin-top:10px;">
                <a href="frm_Login.aspx" class="forgot-password-link">Back to Login</a>
            </div>
        </div>
    </form>
</body>
</html>