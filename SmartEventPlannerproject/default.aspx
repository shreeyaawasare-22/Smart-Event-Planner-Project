<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SmartEventPlannerproject.WebForm2" %>

<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        /* General Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: #f8f5f2;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            font-size: 30px;
            color: black;
            text-align: center;
            font-weight: bold;
            margin-bottom: 10px;
        }

        h5 {
            font-size: 16px;
            color: black;
            text-align: center;
            line-height: 1.6;
        }

        /* Hero Section */
        #home {
            display: block;
            border-radius: 10px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
        }

        /* Table Styling */
        table {
            width: 90%;
            margin: 40px auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            height: 431px;
        }

        td {
            padding: 20px;
            vertical-align: middle;
            text-align: center;
        }

        /* Image Styling */
        .asp-image {
            border-radius: 10px;
            display: block;
            max-width: 100%;
            height: auto;
            margin: auto 28px auto auto;
        }

        /* Call to Action */
        strong {
            display: block;
            font-size: 30px;
            color: black;
            text-align: center;
            margin-top: 10px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
                box-shadow: none;
            }

            td {
                display: block;
                width: 100%;
                text-align: center;
            }

            .asp-image {
                width: 90%;
                height: auto;
            }
        }

        /* Custom Table Width */
        
        .auto-style2 {
            width: 267px;
        }
        .asp-image {
    margin-bottom: 30px; /* Adds space below the image */
}

.table-spacing {
    margin-top: 30px; /* Adds space above the table */
}
.hero-section {
    position: relative;
    width: 101%;
    height: 520px; /* Adjust height as needed */
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

        .auto-style3 {
            width: 526px;
        }
        .auto-style5 {
            width: 67%
    }
        .auto-style6 {
            width: 537px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<div class="hero-section" style="text-align: center; top: 0px; left: 0px;" font-color:black >
    <asp:Image ID="home" runat="server" ImageUrl="~/pics/home1.png" Height="487px" ImageAlign="Top" Width="1336px" CssClass="asp-image"/>   
    <br />
    </div> <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image4" runat="server" Height="165px" Width="168px" ImageUrl="~/pics/logo4.png" ImageAlign="top"/>
    <br />
    <br />
    <br /> 
    <h1><strong>Expert Event Planning</h1>
    <h1>⸻</h1>
    <h5>From intimate gatherings to grand celebrations, we specialize in crafting unforgettable</h5>
    <h5>events tailored to your vision. Whether it's a wedding, corporate event, or private </h5>
    <h5>party,we handle every detail with creativity and precision. Our expertise in </h5>
    <h5>venue design,
        entertainment, and seamless coordination ensures a </h5>
    <h5>stress-free experience,
        allowing you to enjoy every moment. </h5>
    <h5>Let us bring your dream event to life with elegance and </h5>
    <h5>perfection! 🎊💫</h5>
            <br /><br />
            
    <!-- Wedding Section -->
    <table bgcolor="#F2EDEA">
    <tr>
        <td class="auto-style3">
            <h1><strong>Birthday</strong></h1><br />
            <h5>We design unforgettable birthday celebrations by </h5>
            <h5>&nbsp;infusing every moment with personalized details that</h5>
            <h5>&nbsp;tell your unique story. From stunning décor to delightful </h5>
            <h5>surprises, we make sure your special day is overflowing </h5>
            <h5>with joy, laughter, and cherished memories </h5>
            <h5>that will last a lifetime 🎉🎂</h5>
            <br />
        </td>
        <td class="auto-style2">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/pics/bday.png" Height="379px" Width="357px" CssClass="asp-image"/>
        </td>
    </tr>
</table>
    <table bgcolor="#F2EDEA">
        <tr>
            <td class="auto-style6">
                <h1><strong>Weddings</strong></h1><br />
                <h5>We are dedicated to creating and bringing to life unforgettable</h5>
                <h5>&nbsp;memories on your special day. By infusing every detail with </h5>
                <h5>meaning that reflects your unique love story, we’ll ensure your </h5>
                <h5>celebration is as exceptional and one-of-a-kind as your </h5>
                <h5>journey together. Let us turn your dream celebration into </h5>
                <h5>an unforgettable reality!</h5>
            </td>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/weeding.png" Height="362px" Width="357px" CssClass="asp-image"/>
            </td>
        </tr>
    </table>

    <!-- Corporate Section -->
    <table>
        <tr>
            <td class="auto-style5">
                <h1 ><strong>Corporate, Social, <br />& Non-Profit</strong></h1><br />
                <h5>Momento is excited to join forces with your directors or board to craft,</h5>
                <h5>&nbsp;produce, and coordinate an unforgettable event that stays true to your  </h5>
                <h5>mission. By entrusting your event to us, you can rest assured it will  </h5>
                <h5>run seamlessly and be a heartfelt experience for your  </h5>
                <h5>special guests—one that not only meets but exceeds  </h5>
                <h5>expectations,leaving a lasting impression.</h5>
            </td>
            <td class="auto-style2">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/cor.png" Height="392px" Width="311px" CssClass="asp-image"/>
            </td>
        </tr>
    </table>
    </strong>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br /><br /><br /><br />
    <h1>&nbsp;</h1>
</asp:Content>
