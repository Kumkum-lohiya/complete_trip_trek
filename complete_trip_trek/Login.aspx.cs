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
    public partial class login : System.Web.UI.Page

    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)

        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=trip_trek;Integrated Security=True");
            con.Open();

            // Page Load Logic (if required)

        }



        protected void btnLogin_Click(object sender, EventArgs e)

        {

            string email = loginEmail.Text;

            string password = loginPassword.Text;



            // Example login logic

            if (string.IsNullOrEmpty(loginEmail.Text) || string.IsNullOrEmpty(loginPassword.Text))
            {
                Response.Write("<script>alert('Please enter both Email and Password.')</script>");
                return;
            }

            // Define the query with trimming and case-insensitive comparison
            string s = "SELECT COUNT(*) FROM Sign_up WHERE LTRIM(RTRIM(LOWER(Email))) = LTRIM(RTRIM(LOWER(@Email))) AND LTRIM(RTRIM(Password)) = LTRIM(RTRIM(@Password))";

            using (cmd = new SqlCommand(s, con))
            {
                // Add parameters to prevent SQL injection
                cmd.Parameters.AddWithValue("@Email", loginEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", loginPassword.Text.Trim());

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



        



        protected void btnSignUp_Click(object sender, EventArgs e)

        {

            string name = signupName.Text;

            string email = signupEmail.Text;

            string password = signupPassword.Text;

            string s;
            s = "INSERT INTO Sign_up VALUES(@Name, @Email, @Password)";
            cmd = new SqlCommand(s, con);

            // Use parameters to prevent SQL injection
            cmd.Parameters.AddWithValue("@Name", signupName.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", signupEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", signupPassword.Text.Trim());
            

            try
            {
                cmd.ExecuteNonQuery();

                // Clear textboxes after successful insertion
                signupName.Text = "";
                signupEmail.Text = "";
                signupPassword.Text = "";

                signupName.Focus();

                // Display success message
                Response.Write("<script>alert('Thanks for Signing Up')</script>");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}')</script>");
            }
        }


        // Example sign-up logic

        

        }

    }
