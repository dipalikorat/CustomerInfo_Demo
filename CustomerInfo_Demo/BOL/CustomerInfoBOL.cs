using System.Collections.Generic;

namespace CustomerInfo_Demo.BOL
{
    public class CustomerInfoBOL
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Country { get; set; }
        public string Zip { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Notes { get; set; }
    }

    public class CustomerInfoList
    {
        public List<CustomerInfoBOL> customerInfoBLL { get; set; }
    }
}