<%@ Page Title="Customer List" Language="C#" AutoEventWireup="true" CodeBehind="CustomerInfoList.aspx.cs" Inherits="CustomerInfo_Demo.CustomerInfoList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer List</title>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 25px">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <h1>Customer List</h1>
                </div>
            </div>
            <hr />
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="table-responsive">
                            <asp:GridView ID="grdCustomer" runat="server" AllowSorting="true" AllowPaging="true" Width="100%" CssClass="table table-striped table-bordered table-hover" PageSize="10"
                                AutoGenerateColumns="False" DataKeyNames="CustomerID" EmptyDataText="There is no data to display" DataSourceID="sqlCustomerList">
                                <Columns>
                                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" Visible="false" SortExpression="CustomerID" HeaderStyle-ForeColor="DimGray" />
                                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"  HeaderStyle-ForeColor="DimGray" />
                                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" HeaderStyle-ForeColor="DimGray" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" HeaderStyle-ForeColor="DimGray" />
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" HeaderStyle-ForeColor="DimGray" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" HeaderStyle-ForeColor="DimGray" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="sqlCustomerList" runat="server"
                                ConnectionString="<%$ ConnectionStrings:connectionString %>"
                                SelectCommand="sp_GetCustomerInfo"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div class="row">
                     <div class="col-lg-12 ">
                         <asp:Button ID="btnCreateCustomer" ToolTip="Create Customer" runat="server" Text="Create Customer" CssClass="btn btn-info"  OnClick="btnCreateCustomer_Click" CausesValidation="false" />
                     </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
