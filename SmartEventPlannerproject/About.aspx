<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MomentoProject.About" %>
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
            color: #5a4f4f;
            text-align: center;
            font-weight: bold;
            margin-bottom: 10px;
        }

        h5 {
            font-size: 16px;
            color: #7a6969;
            text-align: center;
            line-height: 1.6;
                width: 599px;
            }

        /* Hero Section */
        #home {
            display: block;
            width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.1);
        }

        /* Table Styling */
        table {
            width: 1092px;
            margin: 40px auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
                height: 530px;
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
            margin: auto auto auto 0px;
            }

        /* Call to Action */
        strong {
            display: block;
            font-size: 30px;
            color: #5a4f4f;
            text-align: center;
            margin-top: 10px;
                width: 599px;
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
        .auto-style1 {
            width: 43%;
        }

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
    width: 100%;
    height: 90vh; /* Adjust height as needed */
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

            .auto-style3 {
                width: 60%
            }

            .auto-style5 {
                width: 521px;
            }

            .auto-style6 {
                width: 471px;
            }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="hero-section">
        <asp:Image ID="home" runat="server" ImageUrl="~/pics/home.png" Height="650px" ImageAlign="Left" Width="1157px" CssClass="asp-image"/>   
    </div>
    <br /><br /><br /><br /><br /><br />

    <!-- About Section -->
    
                <h1>We’re passionate about pushing the  envelope,</h1>
                <h1>and discovering what excites you so we can pour that<br />
                into every tiny, yet impactful detail – making sure<br />
                your day is yours.</strong></h1>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
                

    <!-- Wedding Section -->
    <table bgcolor="#F2EDEA">
        <tr>
            <td class="auto-style6">
                <h5><strong>Lead planner/owner</strong></h5>
                <h5><strong>Meet Lauren</strong></h5>
                <br />
                <h5>
                    A Tennessee native, Lauren pursued her higher education in the western 
                    United States, graduating from the University of Colorado with a 
                    Bachelor’s Degree in Architecture and Design. Following her undergraduate 
                    studies, she relocated to Charleston in 2007 to be closer to family. 
                    Lauren dedicated over six years to climbing the ranks of the corporate 
                    event planning world before taking a bold step in 2013 to establish 
                    Fox Events.
                     <br /><br />
                    Over the past decade and more, Lauren has demonstrated 
                    exceptional skill in orchestrating a diverse range of events. Her 
                    expertise encompasses seamlessly managing everything from high-profile 
                    celebrity weddings to large-scale corporate gatherings accommodating over 
                    4,000 guests. As the founder and owner of Fox Events, she has played a
                    pivotal role in the company's inception and development. Currently, 
                    Lauren leads the company, spearheading the planning of luxury events 
                    and deriving great enjoyment from the entire process.
                </h5>
                <br /> 
            </td>
            <td class="auto-style5">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/pics/own.png" Height="506px" Width="450px" CssClass="asp-image"/>
            </td>
        </tr>
    </table>

    <!-- Corporate Section -->
    <table bgcolor="#F2EDEA">
        <tr>
            <td class="auto-style3">
                <h10><strong>Connect</strong></h10>
                <br />
                <h1 align="center"><strong>Let us help you plan </strong></h1>
                <h1 align="center"><strong>your perfect event!</strong></h1>
                <h1 align="center">&nbsp;</h1>
                <h1 align="center">
                    <asp:Button ID="connect" runat="server" BackColor="Black" ForeColor="White" OnClick="Button1_Click1" Text="GET IN TOUCH" Width="391px" />
                </h1>
            </td>
            <td class="auto-style2">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/conn.png" Height="543px" Width="410px" CssClass="asp-image"/>
            </td>
        </tr>
    </table>
</asp:Content>

