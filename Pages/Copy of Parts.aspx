<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Copy of Parts.aspx.cs" Inherits="Parts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:SqlDataSource ID="dsParts" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Manufacturer] FROM [Parts]"></asp:SqlDataSource>
    <asp:Label ID="lblDropdownParts" runat="server" Text="Select a Manufacturer: "></asp:Label>
    <asp:DropDownList ID="ddlPartName" runat="server" AutoPostBack="True" DataSourceID="dsParts"
        DataTextField="PartName" DataValueField="PartName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dsPartsListed" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [PartName], [Manufacturer], [Price], [Quantity], [ImageOnFile] FROM [Parts] WHERE ([Manufacturer] = @Manufacturer) ORDER BY [Manufacturer]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPartName" Name="Manufacturer" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="dlParts" runat="server" CellPadding="4" DataSourceID="dsPartsListed"
        ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="style3">
                <tr>
                    <td>
                        Part Name
                    </td>
                    <td>
                        Manufacturer
                    </td>
                    <td>
                        Price
                    </td>
                    <td>
                        Quantity
                    </td>
                    <td>
                        ImageOnFile
                    </td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <br />
            <table class="style3">
                <tr>
                    <td>
                        <asp:Label ID="PartNameLabel" runat="server" Text='<%# Eval("PartName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ManufacturerLabel" runat="server" Text='<%# Eval("Manufacturer") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageOnFileLabel" runat="server" Text='<%# Eval("ImageOnFile") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
