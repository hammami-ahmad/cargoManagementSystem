using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace kargo_management_system.classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-PHJMC0G;Initial Catalog=cargoManagementSystem;Integrated Security=True");
        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }
    }
}