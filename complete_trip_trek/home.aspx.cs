using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace complete_trip_trek
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void SubmitBudget_Click(object sender, EventArgs e)
        {
            if (int.TryParse(BudgetInput.Text, out int budget) && budget > 0)
            {
                Response.Redirect("landing_input_page.aspx");
            }
            else
            {
                // Optional: Show an error message or handle invalid input.
            }
        }

        protected void BudgetInput_TextChanged(object sender, EventArgs e)
        {

        }
    }
}