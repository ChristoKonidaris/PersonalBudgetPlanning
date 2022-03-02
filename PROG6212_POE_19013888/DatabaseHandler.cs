using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;


namespace PROG6212_POE_19013888
{
    public class DatabaseHandler
    {
        static SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-98LK5KS;Initial Catalog=PersonalBudgetPlanning_19013888_POE;Integrated Security=True");

        public static void FetchUser(String UserName, String Password)
        {
            //bool Flag = false;
            //await sqlCon.OpenAsync();
            sqlCon.Open();

            SqlCommand sqlCmd = new SqlCommand("FetchUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@UserName", UserName);
            sqlCmd.Parameters.AddWithValue("@Password", Password);
            SqlDataReader reader = sqlCmd.ExecuteReader();
            while (reader.Read())
            {
                //Flag = true;

                Users.Income = double.Parse(reader["Income"].ToString());

                Users.TotalMonthlyDeductions = double.Parse(reader["TotalExpenses"].ToString());

                Users.UserName = reader["UserName"].ToString();

            }
            sqlCon.Close();
            //return Flag;

        }
        public static void UpdateUser(String UserName)
        {

            //await sqlCon.OpenAsync();
            sqlCon.Open();

            SqlCommand sqlCmd = new SqlCommand("UpdateUser", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@UserName", UserName);
            sqlCmd.Parameters.AddWithValue("@Income", Users.Income);
            sqlCmd.Parameters.AddWithValue("@TotalExpenses", Users.TotalMonthlyDeductions);

            sqlCmd.ExecuteNonQuery();

            sqlCon.Close();

        }
    }
}