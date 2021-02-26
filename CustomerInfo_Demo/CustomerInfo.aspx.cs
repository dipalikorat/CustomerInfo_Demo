using CustomerInfo_Demo.BOL;
using CustomerInfo_Demo.BLL;
using System;
using System.Web.UI;

namespace CustomerInfo_Demo
{
    public partial class CustomerInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearDetails();
            }
        }

        private void ClearDetails() // to clear form fields values
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress1.Text = "";
            txtAddress2.Text = "";
            txtState.Text = "";
            txtCity.Text = "";
            ddlCountry.SelectedIndex = -1;
            txtZip.Text = "";
            txtPhone.Text = "";
            txtEmail.Text = "";
            txtNotes.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // create an isntance of the business object class
            CustomerInfoBOL cIBOL = new CustomerInfoBOL();
            // create an instance of busienss logic class
            CustomerInfoBLL cIBLL = new CustomerInfoBLL(); 

            cIBOL.FirstName = txtFirstName.Text.Trim();
            cIBOL.LastName = txtLastName.Text.Trim();
            cIBOL.Address1 = txtAddress1.Text.Trim();
            cIBOL.Address2 = txtAddress2.Text.Trim();
            cIBOL.City = txtCity.Text.Trim();
            cIBOL.State = txtState.Text.Trim();
            cIBOL.Country = ddlCountry.SelectedValue.ToString();
            cIBOL.Zip = txtZip.Text.Trim();
            cIBOL.Phone = txtPhone.Text.Trim();
            cIBOL.Email = txtEmail.Text.Trim();
            cIBOL.Notes = txtNotes.Text.Trim();

            bool isInsert = cIBLL.InsertCustomer(cIBOL);

            if (isInsert)
            {
                ClearDetails();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "openModal();", true);
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }

        protected void btnViewAllCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerInfoList.aspx");
        }
    }
}