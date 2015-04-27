<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="OrderDetails.aspx.cs" Inherits="Pages_OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Order Details</h1>
    <h2 style="color: #3366CC;">
        Shipping Details</h2>
    <asp:Label ID="lblShippingAddress" runat="server" Text="Shipping Address:" CssClass="boldTextLarge"></asp:Label>
    <br />
    <asp:Label ID="lblCustomerId" runat="server" Text="Customer ID: " CssClass="boldTextMedium"></asp:Label>
    <asp:Label ID="lblCustomerIdVal" runat="server" Text="" CssClass="boldTextMedium"></asp:Label><br />
    <asp:Label ID="lblName" runat="server" Text="" CssClass="boldTextMedium"></asp:Label><br />
    <asp:Label ID="lblAddress" runat="server" Text="" CssClass="boldTextMedium"></asp:Label><br />
    <asp:Label ID="lblContactNumber" runat="server" Text="" CssClass="boldTextMedium"></asp:Label>
    <h2 style="color: #3366CC;">
        Your Order Items</h2>
    <asp:SqlDataSource ID="dsOrderDetails" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [ItemId], [ItemName], [Quantity] FROM [Items] WHERE ([OrderId] = @OrderId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="OrderId" QueryStringField="orderID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView runat="server" ID="gvwOrderList" AutoGenerateColumns="False" EmptyDataText="No Order Items Found!"
        GridLines="None" Width="100%" CellPadding="3" ShowFooter="True" DataSourceID="dsOrderDetails"
        DataKeyNames="ItemId">
        <HeaderStyle HorizontalAlign="Left" BackColor="#3366CC" ForeColor="#FFFFFF" />
        <Columns>
            <asp:BoundField DataField="ItemId" HeaderText="ItemId" InsertVisible="False" ReadOnly="True"
                SortExpression="ItemId" />
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
        </Columns>
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
        <AlternatingRowStyle BackColor="#F8F8F8" />
    </asp:GridView>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
