using System;
using System.Data.SqlClient;

namespace Register
{
    public class clsDatabase
    {
        private const string ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=qlkhachhang;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;uid=mylogin;pwd=mylogin";
        public static SqlConnection conn;

        public static bool OpenConnection()
        {
            try
            {
                conn = new SqlConnection(ConnectionString);
                conn.Open();
            }
            catch (Exception)
            {

                return false;
            }
            return true;
        }

        public static bool closeConnection()
        {
            try
            {
                conn.Close();
            }
            catch (Exception)
            {

                return false;
            }
            return true;
        }
    }
}