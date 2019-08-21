using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;


namespace MarinaLakeLab2
{
    public static class MarinaCustomerDB
    {
        internal static  int  AddMarinaCustomer(MarinaCustomer cust)
        {
            int custID = 0;
            SqlConnection connection = MarinaDB.GetConnection();
            string insertStatement = "INSERT INTO Customer(FirstName,LastName,Phone,City,Email,Password) VALUES(@FirstName,@LastName,@Phone,@City,@Email,@Password)";
            SqlCommand cmd = new SqlCommand(insertStatement, connection);
            cmd.Parameters.AddWithValue("@FirstName", cust.FirstName);
            cmd.Parameters.AddWithValue("@LastName", cust.LastName);
            cmd.Parameters.AddWithValue("@Phone", cust.Phone);
            cmd.Parameters.AddWithValue("@City", cust.City);
            cmd.Parameters.AddWithValue("@Email", cust.Email);
            cmd.Parameters.AddWithValue("@Password", cust.Password);
            try
            {
                connection.Open();
                //custID = (int)cmd.ExecuteScalar();
                cmd.ExecuteNonQuery();
                string selectQuery = "SELECT IDENT_CURRENT('Customer')";
                SqlCommand selectCmd = new SqlCommand(selectQuery, connection);
                custID = Convert.ToInt32(selectCmd.ExecuteScalar());
            }
           catch(Exception ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return custID;
        }

        internal static int MarinaCustomerLogin(MarinaCustomer cust)
        {
            int idValue = -1;
            try
            { 
                
                SqlConnection connection = MarinaDB.GetConnection();
                string selectID = "SELECT ID FROM Customer WHERE Email = @Email AND Password = @Password";
                
                SqlCommand cmd = new SqlCommand(selectID, connection);
                cmd.Parameters.AddWithValue("@Email", cust.Email);
                cmd.Parameters.AddWithValue("@Password", cust.Password);
                //int idValue = Convert.ToInt32(cmd.ExecuteScalar());
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                // test if there is customer
                if (reader.Read() )
                {
                     
                    idValue = (int)reader["ID"];
                    
                }
               
                 
                    
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return idValue;

        }
    }
}