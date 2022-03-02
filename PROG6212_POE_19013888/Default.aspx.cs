using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PROG6212_POE_19013888
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String hashedPassword = GetMD5(txtPassword.Text);

            Authenticate(txtUserName.Text, hashedPassword); 

        }

        private void Authenticate(String UserName, String Password)
        {
            String hashedPassword = GetMD5(txtPassword.Text);

            SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-98LK5KS;Initial Catalog=PersonalBudgetPlanning_19013888_POE;Integrated Security=True");
            try
            {
                if (sqlCon.State == System.Data.ConnectionState.Closed)
                    sqlCon.Open();
                String query = "SELECT COUNT (1) FROM GeneralUser WHERE UserName = @UserName AND Password=@Password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.Text;
                sqlCmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
                sqlCmd.Parameters.AddWithValue("@Password", hashedPassword);
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    DatabaseHandler.FetchUser(UserName, Password);
                    Response.Redirect("UserInformation.aspx");
                }
                else
                {
                    lblLoginDisplay.Text = "Username or Password is incorrect.";
                }
            }
            catch (Exception ex)
            {
                lblLoginDisplay.Text = ex.Message;
            }
            finally
            {
                sqlCon.Close();
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