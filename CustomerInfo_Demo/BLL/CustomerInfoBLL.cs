using CustomerInfo_Demo.BOL;
using CustomerInfo_Demo.DAL;

namespace CustomerInfo_Demo.BLL
{
    public class CustomerInfoBLL
    {
        public bool InsertCustomer(CustomerInfoBOL customerInfo)
        {
            bool isInsert = false;

            CustomerInfoDAL cInfoDL = new CustomerInfoDAL();
            try
            {
                isInsert = cInfoDL.InsertCustomerToDB(customerInfo);
            }
            catch 
            {
                isInsert = false;
            }
            finally
            {
                cInfoDL = null;
            }
            return isInsert;
        }
    }
}