using System;
using System.Configuration;
using System.Data.SqlClient;

namespace MomentoProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Get the connection string from Web.config
            string connStr = ConfigurationManager.ConnectionStrings["MomentoProject"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM Register WHERE Email=@Email AND PasswordHash=@Password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // ⚠️ Use hashing for real projects

                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    // ✅ Successful Login
                    Session["UserEmail"] = email;
                    Response.Redirect("default.aspx"); // Redirect to another page
                }
                else
                {
                    // ❌ Invalid Login
                    lblMessage.Text = "Invalid email or password.";
                }
                Response.Redirect("default.aspx");
            }

        }
    }
}
