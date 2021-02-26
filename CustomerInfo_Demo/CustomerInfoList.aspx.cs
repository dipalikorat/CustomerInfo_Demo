using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerInfo_Demo
{
    public partial class CustomerInfoList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerInfo.aspx");
        }
    }
}