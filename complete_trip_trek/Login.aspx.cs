using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace complete_trip_trek
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=trip_trek;Integrated Security=True");
            con.Open();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Check if passwords match
            if (TextBox5.Text.Trim() != TextBox6.Text.Trim())
            {
                // Show alert if passwords do not match
                Response.Write("<script>alert('Passwords do not match. Please try again.')</script>");
                return;
            }

            // Proceed with insertion if passwords match
            string s;
            s = "INSERT INTO Sign_up VALUES(@Name, @Email, @Password, @ConfirmPassword)";
            cmd = new SqlCommand(s, con);

            // Use parameters to prevent SQL injection
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox6.Text.Trim());

            try
            {
                cmd.ExecuteNonQuery();

                // Clear textboxes after successful insertion
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox1.Focus();

                // Display success message
                Response.Write("<script>alert('Thanks for Signing Up')</script>");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}')</script>");
            }
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            // Validate input
            if (string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox4.Text))
            {
                Response.Write("<script>alert('Please enter both Email and Password.')</script>");
                return;
            }

            // Define the query with trimming and case-insensitive comparison
            string s = "SELECT COUNT(*) FROM Sign_up WHERE LTRIM(RTRIM(LOWER(Email))) = LTRIM(RTRIM(LOWER(@Email))) AND LTRIM(RTRIM(Password)) = LTRIM(RTRIM(@Password))";

            using (cmd = new SqlCommand(s, con))
            {
                // Add parameters to prevent SQL injection
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text.Trim());

                try
                {
                    // Execute the query and check the result
                    int userCount = (int)cmd.ExecuteScalar();
                    if (userCount > 0)
                    {
                        // If user exists, redirect or display a success message
                        Response.Write("<script>alert('Login successful!'); window.location='home.aspx';</script>");
                    }
                    else
                    {
                        // If user does not exist, display an error message
                        Response.Write("<script>alert('Invalid Email or Password')</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('Error: {ex.Message}')</script>");
                }
            }
        }


    }
}