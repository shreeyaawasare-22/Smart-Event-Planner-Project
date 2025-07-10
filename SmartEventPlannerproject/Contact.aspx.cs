using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class MomentoProject_Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false; // Hide message label on page load
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (chkTerms.Checked) // Ensure terms are accepted
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string subject = ddlSubject.SelectedValue;
            string message = txtMessage.Text.Trim();
            string filePath = "";

            // Handle file upload if a file is attached
            if (fileUpload.HasFile)
            {
                try
                {
                    string fileName = System.IO.Path.GetFileName(fileUpload.FileName);
                    filePath = "~/Uploads/" + fileName; // Save path in DB
                    fileUpload.SaveAs(Server.MapPath(filePath)); // Save file in Uploads folder
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "File upload failed: " + ex.Message;
                    lblMessage.CssClass = "alert alert-danger";
                    lblMessage.Visible = true;
                    return;
                }
            }

            // Save form data to database
            string connStr = ConfigurationManager.ConnectionStrings["MomentoProject"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Contact (Name, Email, Phone, Subject, Message, FilePath) VALUES (@Name, @Email, @Phone, @Subject, @Message, @FilePath)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Phone", phone);
                    cmd.Parameters.AddWithValue("@Subject", subject);
                    cmd.Parameters.AddWithValue("@Message", message);
                    cmd.Parameters.AddWithValue("@FilePath", (object)filePath ?? DBNull.Value);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            // Display success message
            lblMessage.Text = "Thank you, " + name + "! Your message has been received.";
            lblMessage.CssClass = "alert alert-success";
            lblMessage.Visible = true;

            // Clear the form after submission
            ClearForm();
        }
        else
        {
            lblMessage.Text = "Please accept the terms and conditions.";
            lblMessage.CssClass = "alert alert-warning";
            lblMessage.Visible = true;
        }
        Response.Redirect("default.aspx");
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearForm();
    }

    private void ClearForm()
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtMessage.Text = "";
        ddlSubject.SelectedIndex = 0;
        chkTerms.Checked = false;
    }
}
