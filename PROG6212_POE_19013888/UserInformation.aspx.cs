using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExpenseLibrary;

namespace PROG6212_POE_19013888
{
    public partial class UserInformation : System.Web.UI.Page
    {
       

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx"); 
        }

        protected void btnRent_Click(object sender, EventArgs e)
        {
            Response.Redirect("RentAccommodation.aspx");
        }

        

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Expense.totalExpense = 0;

            double.TryParse(txtCellphone.Text, out double CellPhone);
            Expense.addNewExpense(new Expense("CellPhone: ", CellPhone));
            double.TryParse(txtGroceries.Text, out double Groceries);
            Expense.addNewExpense(new Expense("Groceries: ", Groceries));
            double.TryParse(txtIncome.Text, out double Income);
            Users.Income = Income;
            double.TryParse(txtOther.Text, out double Other);
            Expense.addNewExpense(new Expense("Groceries: ", Other));
            double.TryParse(txtTax.Text, out double Tax);
            Expense.addNewExpense(new Expense("Groceries: ", Tax));
            double.TryParse(txtTravelCost.Text, out double TravelCost);
            Expense.addNewExpense(new Expense("Groceries: ", TravelCost));
            double.TryParse(txtWaterLights.Text, out double WaterLights);
            Expense.addNewExpense(new Expense("Groceries: ", WaterLights));



            txtUserInfoDisplay.Text = ("Total Expense: R" + Expense.totalExpense + "\nUser Income: R" + Users.Income);

            
        }

        protected void btnSkip_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyProperty.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCellphone.Text = "";
            txtIncome.Text = "";
            txtGroceries.Text = "";
            txtOther.Text = "";
            txtTax.Text = "";
            txtTravelCost.Text = "";
            txtWaterLights.Text = "";
            txtUserInfoDisplay.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double Insurance = 0, PurchasePrice = 0, TotalDeposit = 0;
            double InterestRate = 0;
            String ModelMake = "";

            if (txtInsurance.Text == "" || txtInterestRate.Text == "" || txtModelMake.Text == "" || txtPurchasePrice.Text == "" || txtTotalDeposit.Text == "")
            {
                txtVehicleDisplay.Text = "Please enter valid information.";
            }else
            { 

                Insurance = double.Parse(txtInsurance.Text);
                InterestRate = double.Parse(txtInterestRate.Text);
                ModelMake = txtModelMake.Text;
                PurchasePrice = double.Parse(txtPurchasePrice.Text);
                TotalDeposit = double.Parse(txtTotalDeposit.Text);

                Vehicle expense = new Vehicle(ModelMake, PurchasePrice, TotalDeposit, InterestRate, Insurance);
                Users.vehicle = expense;



                txtVehicleDisplay.Text = "The vehicle financing information has been capture, you may proceed." + "\n\nModel and Make: " + ModelMake + "\nPurchase Price: R" + PurchasePrice + "\nTotal Deposit: R" + TotalDeposit + "\nInterest Rate: " + InterestRate + "%" + "\nEstimated Insurance Premium: R" + Insurance;
            }
        }

        protected void btnVehicleClear_Click(object sender, EventArgs e)
        {
            txtInterestRate.Text = "";
            txtInterestRate.Text = "";
            txtModelMake.Text = "";
            txtPurchasePrice.Text = "";
            txtTotalDeposit.Text = "";
            txtVehicleDisplay.Text = "";
        }

        protected void btnCalculateMonthlyAmount_Click(object sender, EventArgs e)
        {
            double Output = Expense.totalExpense;


            if (Users.vehicle != null)
            {

                Output += Users.vehicle.MonthlyPayment;
            }
            if (Users.house != null)
            {

                Output += Users.house.MonthlyPayment;
            }



            if (Output == 0)
            {
                Output = Users.TotalMonthlyDeductions;
            }
            else
            {
                Users.TotalMonthlyDeductions = Output;
            }

            double MonthlyMoneyLeft = (Users.Income - Output);

            txtAvailableMonthlyAmountDisplay.Text = "The total expenses for the month is: R" + Math.Round(Output, 2) +
                "\n" + "The total available money after deductions for the month is: R" + Math.Round(MonthlyMoneyLeft, 2);

            DatabaseHandler.UpdateUser(Users.UserName);

            
        }

        protected void btnAvailableMonthlyAmountClear_Click(object sender, EventArgs e)
        {
            txtAvailableMonthlyAmountDisplay.Text = "";
        }

        protected void btnCalcClear_Click(object sender, EventArgs e)
        {
            txtReasonForSave.Text = "";
            txtSpecifiedAmount.Text = "";
            txtNumOfMonthsToSave.Text = "";
            txtInterestOnSave.Text = "";
            txtCalcSaveDisplay.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String ReasonForSave = "";
            double SpecifiedAmount = 0, NumOfMonthsToSave = 0, InterestOnSave = 0;
            double Numerator = 0, Denominator = 0, Bracket = 0, CalcInterestRate = 0, DenominatorWhole = 0, AmountToSave = 0;

            SpecifiedAmount = double.Parse(txtSpecifiedAmount.Text);
            NumOfMonthsToSave = double.Parse(txtNumOfMonthsToSave.Text) / 12;
            ReasonForSave = txtReasonForSave.Text;
            InterestOnSave = double.Parse(txtInterestOnSave.Text);

            CalcInterestRate = InterestOnSave / 100;

            Numerator = SpecifiedAmount * (CalcInterestRate / 12);

            Bracket = 1 + (CalcInterestRate / 12);

            Denominator = Math.Pow(Bracket, (NumOfMonthsToSave * 12));

            DenominatorWhole = Denominator - 1;

            AmountToSave = Numerator / DenominatorWhole;

            txtCalcSaveDisplay.Text = "The amount you will need to save every month to accumulate R" + SpecifiedAmount + " by the end of the " + NumOfMonthsToSave * 12 + " month period at an interest rate of " + InterestOnSave + "% for your reason of '" + ReasonForSave + "' is: R" + Math.Round(AmountToSave) + " per month.";

        }
    }
}