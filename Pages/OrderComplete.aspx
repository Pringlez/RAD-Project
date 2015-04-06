<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="OrderComplete.aspx.cs" Inherits="Pages_OrderPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Thank You</h1>
    <p class="boldTextMedium">
        View your order status on the accounts page</p>
    <a href="CustomerAccount.aspx" class="boldTextMedium">My Account</a>
    <br />
    <h2 style="color: #3366CC;">
        Your Order</h2>
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
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
