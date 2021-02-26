using CustomerInfo_Demo.BOL;
using System;
using System.Data.SqlClient;

namespace CustomerInfo_Demo.DAL
{
    public class CustomerInfoDAL
    {
        public bool InsertCustomerToDB(CustomerInfoBOL cI)
        {
            DBConnection db = new DBConnection(); 

            SqlConnection cn = db.GetConnection();

            bool isInserted = true;
            try
            {
                string csql = "[sp_InsertCustomerInfo]";

                SqlCommand sqlComand = new SqlCommand(csql, cn);
                sqlComand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlComand.Parameters.AddWithValue("@FirstName", cI.FirstName ?? "");
                sqlComand.Parameters.AddWithValue("@LastName", cI.LastName ?? "");
                sqlComand.Parameters.AddWithValue("@Address1", cI.Address1 ?? "");
                sqlComand.Parameters.AddWithValue("@Address2", cI.Address2 ?? "");
                sqlComand.Parameters.AddWithValue("@City", cI.City ?? "");
                sqlComand.Parameters.AddWithValue("@State", cI.State ?? "");
                sqlComand.Parameters.AddWithValue("@Country", cI.Country ?? "");
                sqlComand.Parameters.AddWithValue("@Zip", cI.Zip ?? "");
                sqlComand.Parameters.AddWithValue("@Phone", cI.Phone ?? "");
                sqlComand.Parameters.AddWithValue("@Email", cI.Email ?? "");
                sqlComand.Parameters.AddWithValue("@Notes", cI.Notes ?? "");

                sqlComand.ExecuteNonQuery();
                sqlComand.Dispose();
            }
            catch (Exception ex)
            {
                // write down error to the error log  somewhere in database to get the error details. For now I have just written it to the console
                Console.Write(ex.Message);
                isInserted = false;
            }
            finally
            {
                db.DisposeConnection(cn);
            }
            return isInserted;
        }
    }
}