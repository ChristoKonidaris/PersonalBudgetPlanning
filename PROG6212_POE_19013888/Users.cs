using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ExpenseLibrary;

namespace PROG6212_POE_19013888
{
    public class Users
    {
        public static string UserName { get; set; }
        public static double Income { get; set; }

        public static double TotalMonthlyDeductions { get; set; } = 0;

        public static Vehicle vehicle { get; set; } = null;

        public static House house { get; set; } = null;
    }
}