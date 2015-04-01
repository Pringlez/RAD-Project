<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="Pages_ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


            <h1>Shopping Cart</h1>
            <a href="Cars.aspx">< Back to Products</a>
 
            <br /><br />
            <asp:GridView runat="server" ID="gvShoppingCart"  AutoGenerateColumns="False" 
                EmptyDataText="There is nothing in your shopping cart." GridLines="None" 
                Width="100%" CellPadding="5" ShowFooter="True" DataKeyNames="ProductId" 
                OnRowDataBound="gvShoppingCart_RowDataBound" 
                OnRowCommand="gvShoppingCart_RowCommand" 
                onselectedindexchanged="gvShoppingCart_SelectedIndexChanged1" 
                onrowupdated="rowUpdated" >
               
                <HeaderStyle HorizontalAlign="Left" BackColor="#3D7169" ForeColor="#FFFFFF" />
                <FooterStyle HorizontalAlign="Right" BackColor="#6C6B66" ForeColor="#FFFFFF" />
                <AlternatingRowStyle BackColor="#F8F8F8" />
                <Columns>
 
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox  runat="server" ID="txtQuantity" Columns="5" OnTextChanged="TxtId_TextChanged"  CommandArgument='<%# Eval("ProductId") %>' Text='<%# Eval("Quantity")  %>'></asp:TextBox><br />
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton>
                            <asp:HiddenField ID="HiddenField1" Value = '<%# Eval("ProductId") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price" 
                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" 
                        DataFormatString="{0:C}" >
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="TotalPrice" HeaderText="Total" 
                        ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" 
                        DataFormatString="{0:C}" >
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
 
            <br />
            <asp:Button runat="server" ID="btnUpdateCart" Text="Update Cart" OnClick="btnUpdateCart_Click" />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

