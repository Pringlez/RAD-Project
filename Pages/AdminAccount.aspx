<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminAccount.aspx.cs" Inherits="AdminAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Admin Account</h1>
    <asp:Label ID="lblResult" runat="server" CssClass="boldTextMedium"></asp:Label>
    <p class="boldTextMedium">
        View / Update your details and display customer orders</p>
    <h2 style="color: #3366CC;">
        My Details</h2>
    <table>
        <tr>
            <td align="center" style="width: 50%;">
                <asp:Button ID="btnCarsOverview" runat="server" CssClass="boldTextSmall buttonSmall" CausesValidation="False"
                    PostBackUrl="~/Pages/CarsOverview.aspx" Text="Cars Overview" Width="120px" />
            </td>
            <td align="center" style="width: 50%;">
                <asp:Button ID="btnPartsOverview" runat="server" CssClass="boldTextSmall buttonSmall" CausesValidation="False"
                    PostBackUrl="~/Pages/PartsOverview.aspx" Text="Parts Overview" Width="120px" />
            </td>
            <td>
                <asp:Label ID="lblWelcome" runat="server" Style="text-align: right" CssClass="boldTextMedium"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblUser" runat="server" ForeColor="#006600" Style="text-align: right"
                    CssClass="boldTextMedium"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button_LogOut" runat="server" CssClass="boldTextSmall buttonSmall" OnClick="Button_LogOut_Click"
                    Style="text-align: right" Text="Log Out" Width="69px" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table align="center">
        <tr>
            <td style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblAdminId" runat="server" CssClass="pageLabelColor boldTextMedium">Admin ID: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAdminId" runat="server" Width="215px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblName" runat="server" CssClass="pageLabelColor boldTextMedium">Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="215px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName"
                    ErrorMessage="Name Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblAddress" runat="server" CssClass="pageLabelColor boldTextMedium">Address: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblEmail" runat="server" CssClass="pageLabelColor boldTextMedium">Email: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="212px" Enabled="False"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="E-Mail Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                    ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Not Valid Email Address!"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassw" Display="Dynamic" ErrorMessage="Passwords Must Match!"
                    Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblConfirmPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Confirm Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassw" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredConfirmPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Confirm Password Field Required" Display="Dynamic" Font-Bold="True"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblModile" runat="server" CssClass="pageLabelColor boldTextMedium">Mobile: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNum" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobileNum"
                    ErrorMessage="Mobile Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server"
                    ControlToValidate="txtMobileNum" Display="Dynamic" ErrorMessage="Not A Valid Mobile Number! (
                    0XX-XXXXXXX)" ValidationExpression="0\d{1,3}-\d{1,7}" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <br />
                <asp:Button ID="btnUpdate" runat="server" CssClass="boldTextSmall buttonSmall" Text="Update Details"
                    Width="110px" OnClick="btnUpdate_Click" Font-Bold="True" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <h2 style="color: #3366CC;">
        Customer Orders</h2>
    <asp:SqlDataSource ID="dsOrders" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [OrderId], [OrderDate], [OrderStatus] FROM [Orders] ORDER BY [OrderDate]">
    </asp:SqlDataSource>
    <asp:GridView runat="server" ID="gvwOrderList" AutoGenerateColumns="False" EmptyDataText="No Order Found!"
        GridLines="None" Width="100%" CellPadding="3" ShowFooter="True" DataKeyNames="OrderId"
        DataSourceID="dsOrders">
        <HeaderStyle HorizontalAlign="Left" BackColor="#3366CC" ForeColor="#FFFFFF" />
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
        <AlternatingRowStyle BackColor="#F8F8F8" />
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True"
                SortExpression="OrderId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
