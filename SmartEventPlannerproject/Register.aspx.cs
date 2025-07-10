using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace MomentoProject 
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string username = txtUsername.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Get connection string from Web.config
            string connStr = WebConfigurationManager.ConnectionStrings["MomentoProject"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Check if the email already exists
                string query = "SELECT COUNT(*) FROM dbo.Register WHERE Email = @Email";  // Use dbo.Users if needed
                using (SqlCommand checkCmd = new SqlCommand(query, conn))
                {
                    checkCmd.Parameters.AddWithValue("@Email", email);

                    object result = checkCmd.ExecuteScalar();
                    int existingUsers = (result != null) ? Convert.ToInt32(result) : 0;  // Handle null case

                    if (existingUsers > 0)
                    {
                        // Email already exists
                    }
                }


                // Insert new user
                string insertQuery = "INSERT INTO Register (FullName, Username, Phone, Email, PasswordHash) " +
                                     "VALUES (@FullName, @Username, @Phone, @Email, @Password)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@FullName", fullName);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // ⚠️ Use hashing for real projects

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lblMessage.Text = "✅ Registration Successful!";
                    Response.Redirect("Login.aspx"); // Redirect to login page
                }
                else
                {
                    lblMessage.Text = "❌ Registration Failed!";
                }
            }
        }
    }
}
