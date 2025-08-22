<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Demo2.ForgotPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="stylesheet" type="text/css" href="../css/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="bank-login-container">
            <div class="bank-logo">
                <img src="../images/bank-logo.png" alt="Bank Logo" />
            </div>
            <h2>Forgot Password</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Enter your email address:" CssClass="login-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="login-input"></asp:TextBox>
            </div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="login-button"  />
            <div class="form-group" style="margin-top:10px;">
                <a href="frm_Login.aspx" class="forgot-password-link">Back to Login</a>
            </div>
        </div>
    </form>
</body>
</html>
