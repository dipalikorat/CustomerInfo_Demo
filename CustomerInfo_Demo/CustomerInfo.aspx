<%@ Page Title="Customer Information" Language="C#" AutoEventWireup="true" ValidateRequest="true" CodeBehind="CustomerInfo.aspx.cs" Inherits="CustomerInfo_Demo.CustomerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Info</title>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

    <script type="text/javascript">

        function btnClienClick() {
            //nothing to do here
        }

        function openModal() {
            $('#modelThankyou').modal('show');
        }

        function validateField(src, args) {
            if (args.Value.trim() === "") {
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }
    </script>
    <style type="text/css">
        body {
            background-color: whitesmoke;
        }

        h1 {
            color: dimgrey;
            text-align: center;
        }

        p {
            color: dimgrey;
            font-size: 15pt;
        }

        #divMain{
            margin-top: 25px;
            margin-bottom:25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divMain">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <h1>Customer Information</h1>
                </div>
            </div>
            <hr />
            <div class="container col-md-6">
                <div class="form-group">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Error while saving data. Please try again." ForeColor="Red" Visible="false"></asp:Label>
                </div>
                <div class="form-group">
                    <label>First Name *</label>
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" MaxLength="50" placeholder="Enter First Name"></asp:TextBox>
                    <asp:CustomValidator ID="csValidateFirstName" runat="server" ErrorMessage="First name is required." ForeColor="Red" Display="Dynamic"
                        ClientValidationFunction="validateField" ControlToValidate="txtFirstName" ValidateEmptyText="true"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <label>Last Name *</label>
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" MaxLength="50" placeholder="Enter Last Name"></asp:TextBox>
                    <asp:CustomValidator ID="csValidateLastName" runat="server" ErrorMessage="Last name is required." ForeColor="Red" Display="Dynamic"
                        ClientValidationFunction="validateField" ControlToValidate="txtLastName" ValidateEmptyText="true"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <label>Address1 *</label>
                    <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" MaxLength="200" placeholder="Enter Address1"></asp:TextBox>
                    <asp:CustomValidator ID="csValidateAddress1" runat="server" ErrorMessage="Address1 is required." ForeColor="Red" Display="Dynamic"
                        ClientValidationFunction="validateField" ControlToValidate="txtAddress1" ValidateEmptyText="true"></asp:CustomValidator>
                </div>
                <div class="form-group">
                    <label>Address2</label>
                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" MaxLength="200" placeholder="Enter Address2"></asp:TextBox>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-4">
                            <label>City *</label>
                            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" MaxLength="50" placeholder="Enter City"></asp:TextBox>
                            <asp:CustomValidator ID="csValidateCity" runat="server" ErrorMessage="City is required." ForeColor="Red" Display="Dynamic"
                                ClientValidationFunction="validateField" ControlToValidate="txtCity" ValidateEmptyText="true"></asp:CustomValidator>
                        </div>
                        <div class="col-4">
                            <label>State *</label>
                            <asp:TextBox ID="txtState" runat="server" CssClass="form-control" MaxLength="50" placeholder="Enter State"></asp:TextBox>
                            <asp:CustomValidator ID="csValidateState" runat="server" ErrorMessage="State is required." ForeColor="Red" Display="Dynamic"
                                ClientValidationFunction="validateField" ControlToValidate="txtState" ValidateEmptyText="true"></asp:CustomValidator>
                        </div>
                        <div class="col-4">
                            <label>Country *</label>
                            <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="sqlCountry" CssClass="form-control" placeholder="Enter Country" DataTextField="Country" DataValueField="Country">
                            </asp:DropDownList>
                            <asp:CustomValidator ID="csValidateCountry" runat="server" ErrorMessage="Country is required." ForeColor="Red" Display="Dynamic"
                                ClientValidationFunction="validateField" ControlToValidate="ddlCountry" ValidateEmptyText="true"></asp:CustomValidator>
                            <asp:SqlDataSource ID="sqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>"
                                SelectCommand="Select '' as Country Union Select Country from CountryMaster Order by Country Asc"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-4">
                            <label>Zip</label>
                            <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="20" placeholder="Enter Zip"></asp:TextBox>
                        </div>
                        <div class="col-4">
                            <label>Phone *</label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" MaxLength="20" placeholder="Enter Phone"></asp:TextBox>
                            <asp:CustomValidator ID="csValidatePhone" runat="server" ErrorMessage="Phone is required." ForeColor="Red" Display="Dynamic"
                                ClientValidationFunction="validateField" ControlToValidate="txtPhone" ValidateEmptyText="true"></asp:CustomValidator>
                            <asp:RegularExpressionValidator ID="rgPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is not valid" Display="Dynamic"
                                ForeColor="Red" ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-4">
                            <label>Email *</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" MaxLength="50" placeholder="Enter Email"></asp:TextBox>
                            <asp:CustomValidator ID="csValidateEmail" runat="server" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic"
                                ClientValidationFunction="validateField" ControlToValidate="txtEmail" ValidateEmptyText="true"></asp:CustomValidator>
                            <asp:RegularExpressionValidator ID="rgEmail" runat="server" ErrorMessage="Email is not valid." ControlToValidate="txtEmail" Display="Dynamic"
                                ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label>Notes</label>
                    <asp:TextBox ID="txtNotes" TextMode="MultiLine" runat="server" CssClass="form-control" MaxLength="4000" placeholder="Enter Notes"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" CausesValidation="true" OnClientClick="btnClienClick()" />
                <asp:Button ID="btnViewAllCustomer" ToolTip="View list of all customer (This is for admin)" runat="server" Text="View All Customer" CssClass="btn btn-info" OnClick="btnViewAllCustomer_Click" CausesValidation="false" />
            </div>
        </div>
        <div class="modal" id="modelThankyou" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Thank you!!</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Data has been saved successfully!!!</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
