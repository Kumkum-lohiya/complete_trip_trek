using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace complete_trip_trek
{
    
    public partial class contactus : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog=trip_trek;Integrated Security=True");
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) ||
                string.IsNullOrWhiteSpace(TextBox2.Text) ||
                string.IsNullOrWhiteSpace(TextBox3.Text) ||
                string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                Response.Write("<script>alert('Please fill in all fields')</script>");
                return;
            }

            // Define the SQL query with column names
            String s = "INSERT INTO Contact_us (Column1, Column2, Column3, Column4, SubmissionDate) VALUES (@Value1, @Value2, @Value3, @Value4, GETDATE())";
            using (cmd = new SqlCommand(s, con))
            {
                // Add parameterized values
                cmd.Parameters.AddWithValue("@Value1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Value2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Value3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Value4", TextBox4.Text);

                try
                {
                    cmd.ExecuteNonQuery(); // Execute the query
                    Response.Write("<script>alert('Request is sent')</script>");

                    // Clear fields after successful insert
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox1.Focus();
                }
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('Error: {ex.Message}')</script>");
                }
            }
        }


    }
}