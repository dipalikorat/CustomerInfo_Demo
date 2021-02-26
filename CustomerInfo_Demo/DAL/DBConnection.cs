using System.Configuration;
using System.Data.SqlClient;

namespace CustomerInfo_Demo.DAL
{
    public class DBConnection
    {
        public SqlConnection GetConnection()
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            cn.Open();
            return cn;
        }

        public void DisposeConnection(SqlConnection con)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Dispose();
        }
    }
}