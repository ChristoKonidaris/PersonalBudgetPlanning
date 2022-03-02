using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExpenseLibrary;

namespace PROG6212_POE_19013888
{
    public partial class RentAccommodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            double Rent = 0;
            if(txtRent.Text == "")
            {
                txtRentDisplay.Text = "Please enter a valid amount.";
            }
            else { 
            Rent = double.Parse(txtRent.Text);

            Expense.addNewExpense(new Expense("Rent: R", Rent));

            txtRentDisplay.Text = "Your monthly rent of R" + Rent + " has been captured, you may go back.";
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserInformation.aspx");
        }

        protected void btnClearRent_Click(object sender, EventArgs e)
        {
            txtRent.Text = "";
            txtRentDisplay.Text = "";
        }
    }
}