<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="Demo2.frm_Login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:300px; margin:auto; padding-top:100px;">
            <h2>Login</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br /><br />
            <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label><br />
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>

