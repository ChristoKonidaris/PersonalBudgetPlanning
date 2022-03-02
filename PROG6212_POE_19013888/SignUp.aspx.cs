using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG6212_POE_19013888
{
    public partial class SignUp : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-98LK5KS;Initial Catalog=PersonalBudgetPlanning_19013888_POE;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            String hashedPassword = GetMD5(txtPasswordSignUp.Text);


            if (txtUserNameSignUp.Text == "" || txtPasswordSignUp.Text == "")
                lblSignUpDisplay.Text = "Please enter your information.";
            else if (txtPasswordSignUp.Text != txtCPasswordSignUp.Text)
                lblSignUpDisplay.Text = "Passwords do not match.";
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAdd", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserName", txtUserNameSignUp.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", hashedPassword);
                    sqlCmd.Parameters.AddWithValue("@Income", 0);
                    sqlCmd.Parameters.AddWithValue("@TotalExpenses", 0);
                    sqlCmd.ExecuteNonQuery();
                    lblSignUpDisplay.Text = "Registration Successful.";
                    
                }


                Response.Redirect("UserInformation.aspx");
            }
            
        }

        public String GetMD5(String input)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(input));
            byte[] result = md5.Hash;
            StringBuilder str = new StringBuilder();
            for (int i = 1; i < result.Length; i++)
            {
                str.Append(result[i].ToString("x2"));
            }
            return str.ToString();

        }
    }
}