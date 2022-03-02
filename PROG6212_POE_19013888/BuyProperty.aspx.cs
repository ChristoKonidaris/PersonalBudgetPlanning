using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExpenseLibrary;

namespace PROG6212_POE_19013888
{
    public partial class BuyProperty : System.Web.UI.Page
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
            double Deposit = 0, Price = 0, InterestRate = 0;
            int NumOfMonths = 0;

            if (txtDeposit.Text == "" || txtInterestRate.Text == "" || txtNumOfMonths.Text == "" || txtPrice.Text == "")
            {
                txtBuyDisplay.Text = "Please enter valid information.";
            }
            else
            {
                Deposit = double.Parse(txtDeposit.Text);
                InterestRate = double.Parse(txtInterestRate.Text);
                NumOfMonths = int.Parse(txtNumOfMonths.Text);
                Price = double.Parse(txtPrice.Text);
                House expense = new House(Price, Deposit, InterestRate, NumOfMonths);
                Users.house = expense;


                txtBuyDisplay.Text = "The home loan information has been captured, you may go back.\n" + "\nPurchase Price of Property: R" + Price + "\nTotal Deposit: R" + Deposit + "\nInterest Rate: " + InterestRate + "%" + "\nNumber of Months to repay: " + NumOfMonths;

            }
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserInformation.aspx");
        }

        protected void btnClearBuy_Click(object sender, EventArgs e)
        {
            txtDeposit.Text = "";
            txtInterestRate.Text = "";
            txtNumOfMonths.Text = "";
            txtPrice.Text = "";
            txtBuyDisplay.Text = "";
        }
    }
}