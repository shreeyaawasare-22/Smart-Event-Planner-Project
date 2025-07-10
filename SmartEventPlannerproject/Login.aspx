<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MomentoProject.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>

    <form id="form1" runat="server">  <%-- ✅ Added missing form tag --%>
        <div class="form-container">
            <h2>Login</h2>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" placeholder="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />

            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" />

            <asp:Button ID="btnLogin" runat="server" CssClass="login-button" Text="Login" OnClick="btnLogin_Click" />

            <p>Don't have an account? <a href="Register.aspx">Sign Up</a></p>
        </div>
    </form>

</body>
</html>
