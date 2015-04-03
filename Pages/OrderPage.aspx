<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="OrderPage.aspx.cs" Inherits="Pages_OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        My Order</h1>
    <h2 style="color: #3366CC;">
        Shipping Details</h2>
    <asp:Label ID="lblShippingAddress" runat="server" Text="Shipping Address:" CssClass="boldTextLarge"></asp:Label>
    <br />
    <asp:Label ID="lblName" runat="server" Text="" CssClass="boldTextMedium"></asp:Label><br />
    <asp:Label ID="lblAddress" runat="server" Text="" CssClass="boldTextMedium"></asp:Label><br />
    <asp:Label ID="lblContactNumber" runat="server" Text="" CssClass="boldTextMedium"></asp:Label>
    <br />
    <br />
    <asp:GridView runat="server" ID="gvwOrderList" AutoGenerateColumns="False" EmptyDataText="Theres Nothing On Your Order List!"
        GridLines="None" Width="100%" CellPadding="5" ShowFooter="True" DataKeyNames="ProductId"
        OnRowDataBound="gvwOrderList_RowDataBound">
        <HeaderStyle HorizontalAlign="Left" BackColor="#3366CC" ForeColor="#FFFFFF" />
        <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
        <AlternatingRowStyle BackColor="#F8F8F8" />
        <Columns>
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label runat="server" ID="txtQuantity" Columns="5" OnTextChanged="TxtId_TextChanged"
                        CommandArgument='<%# Eval("ProductId") %>' Text='<%# Eval("Quantity")  %>'></asp:Label><br />
                    <asp:HiddenField ID="HiddenField1" Value='<%# Eval("ProductId") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="UnitPrice" HeaderText="Price" ItemStyle-HorizontalAlign="Right"
                HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}">
                <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="Total" ItemStyle-HorizontalAlign="Right"
                HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}">
                <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
