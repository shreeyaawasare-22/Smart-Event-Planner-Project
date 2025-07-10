<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MomentoProject.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="register.css" />
    <title>SIGN UP</title>
</head>
<body>
   <form id="form1" runat="server">
    <div class="form-container">
        <h2>Registration</h2>

        <p style="margin-left: 40px">
            <label for="txtFullName">Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." ForeColor="Red" Display="Dynamic" />
            </label>
        </p>

        <p style="margin-left: 40px">
            <label for="txtUsername">Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." ForeColor="Red" Display="Dynamic" />
            </label>
        </p>

        <p style="margin-left: 40px">
            <label for="txtPhone">Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." ForeColor="Red" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationExpression="^\d{10}$" ErrorMessage="Enter a valid 10-digit phone number." ForeColor="Red" Display="Dynamic" />
            </label>
        </p>

        <p style="margin-left: 40px">
            <label for="txtEmail">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[^\s@]+@[^\s@]+\.[^\s@]+$" ErrorMessage="Enter a valid email address." ForeColor="Red" Display="Dynamic" />
            </label>
        </p>

        <p style="margin-left: 40px">
            <label for="txtPassword">Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="Password must be at least 8 characters long and contain at least one letter and one number." ForeColor="Red" Display="Dynamic" />
            </label>
        </p>

        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="styled-button" OnClick="btnRegister_Click" Width="174px" />
        <br /><br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
</form>
</body>
</html>