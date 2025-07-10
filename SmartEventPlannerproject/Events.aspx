<%@ Page Title="Events" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="MomentoProject.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
        h1 {
            font-size: 28px;
            color: #5a4f4f;
            text-align: center;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* -------------------- Form Styling -------------------- */
        .styled-input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            margin-bottom: 15px;
        }

        /* -------------------- Button Styling -------------------- */
        .styled-button {
            background-color: #5a4f4f;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        .styled-button:hover {
            background-color: #7a6969;
        }

        /* -------------------- Table Styling -------------------- */
        table {
            width: 60%;
            margin: 20px auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.3s ease-in-out;
        }

        table:hover {
            transform: scale(1.02);
        }

        td {
            padding: 10px;
            text-align: center;
        }

        /* -------------------- GridView Styling -------------------- */
        .styled-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        .styled-table th, .styled-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        .styled-table th {
            background-color: #5a4f4f;
            color: white;
        }
    </style>
    <br>
    <h1>PLAN YOUR EVENT</h1>

    <table>
        <tr>
            <td><asp:TextBox ID="txtEventName" runat="server" placeholder="Event Name" CssClass="styled-input"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtEventDate" runat="server" placeholder="YYYY-MM-DD" CssClass="styled-input" TextMode="Date"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtEventTime" runat="server" placeholder="HH:MM AM/PM" CssClass="styled-input" TextMode="Time"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtVenue" runat="server" placeholder="Venue" CssClass="styled-input"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnCreateEvent" runat="server" Text="Create Event" CssClass="styled-button" OnClick="btnCreateEvent_Click" />
            </td>
        </tr>
    </table>
    <br /><br />
    <h1>All Events</h1>
    <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="True" CssClass="styled-table"></asp:GridView>

</asp:Content>
