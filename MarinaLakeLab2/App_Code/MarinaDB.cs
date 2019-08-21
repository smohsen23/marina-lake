using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace MarinaLakeLab2
{
    public class MarinaDB
    {
        public static SqlConnection GetConnection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MarinaConnectionString"].ConnectionString;
            return new SqlConnection(connectionString);
        } 
    }
}