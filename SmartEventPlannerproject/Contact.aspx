<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MomentoProject_Contact" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Connect</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style type="text/css">
        /* General Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: #f8f5f2;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            font-size: 30px;
            color: #5a4f4f;
            text-align: center;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Form Container */
        .form-container {
            width: 50%;
            margin: auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }

        /* Form Fields */
        .form-label {
            font-weight: 600;
            color: #5a4f4f;
        }

        .form-control {
            border-radius: 8px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background-color: #5a4f4f;
            border: none;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background-color: #7a6969;
        }

        .btn-secondary {
            background-color: #ccc;
            border: none;
        }

        /* File Upload Styling */
        .form-control-file {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 8px;
        }

        /* Terms and Conditions */
        .form-check-label {
            color: #7a6969;
            font-size: 14px;
        }

        /* Success / Error Message */
        .alert {
            display: block;
            text-align: center;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Connect</h2>
        
        <div class="form-container">
            <form id="form1" runat="server">
                <div class="mb-3">
                    <label for="txtName" class="form-label">Your Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="txtEmail" class="form-label">Your Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="txtPhone" class="form-label">Your Phone Number</label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="ddlSubject" class="form-label">Subject</label>
                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control">
                        <asp:ListItem Text="General Inquiry" Value="General" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Support" Value="Support"></asp:ListItem>
                        <asp:ListItem Text="Feedback" Value="Feedback"></asp:ListItem>
                        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label for="txtMessage" class="form-label">Your Message</label>
                    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="fileUpload" class="form-label">Attach a File (optional)</label>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="form-control-file" />
                </div>

                <div class="mb-3 form-check">
                    <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-check-input" required />
                    <label class="form-check-label" for="chkTerms">I agree to the terms & conditions</label>
                </div>

                <div class="d-flex gap-2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CssClass="btn btn-secondary" />
                </div>

                <asp:Label ID="lblMessage" runat="server" CssClass="alert mt-3" Visible="false"></asp:Label>
            </form>
        </div>
    </div>
</body>
</html>
