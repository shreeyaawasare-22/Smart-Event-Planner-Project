<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="MomentoProject.Register1" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        /* -------------------- General Styling -------------------- */
        body {
            font-family: 'Poppins', sans-serif;
            background: #f8f5f2;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* -------------------- Centered Main Title -------------------- */
        h2 {
            font-size: 30px;
            color: #5a4f4f;
            text-align: center;
            font-weight: bold;
            margin-bottom: 10px;
        }

        p {
            font-size: 16px;
            color: #7a6969;
            text-align: center;
            line-height: 1.6;
        }

        /* -------------------- Hero Section -------------------- */
        .hero-section {
            position: relative;
            width: 100%;
            height: 90vh;
            background: url('pics/home1.png') no-repeat center center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }

        .hero-section h1 {
            font-size: 48px;
            font-weight: bold;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }

        /* -------------------- Footer Styling -------------------- */
        .footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 10px 20px;
            background-color: #f8f8f8;
        }

        .footer-item {
            flex: 1;
            text-align: center;
        }

        .footer-item.left {
            text-align: left;
        }

        .footer-item.right {
            text-align: right;
        }

        .footer-logo {
            height: 40px;
        }

        /* -------------------- Responsive Design -------------------- */
        @media (max-width: 768px) {
            .table {
                width: 100%;
                box-shadow: none;
            }

            td {
                display: block;
                width: 100%;
                text-align: center;
            }
        }
        strong {
    display: block;
    font-size: 30px;
    color: #5a4f4f;
    text-align: center;
    margin-top: 10px;
}
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="reg" runat="server" ImageUrl="~/pics/reg.jpg" Height="505px" ImageAlign="Left" Width="1110px"/>   
    <br />
    <br />
    <br />
    <br />
    <br />
    <strong>
    <br /><br />
   <H2> Welcome to MOMENTO </H2><p><a href="Login.aspx">LOGIN</a> or <a href="Register.aspx">SIGN UP</a> to manage your events.</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </strong>
</asp:Content>
