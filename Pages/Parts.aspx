<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Parts.aspx.cs" Inherits="Parts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="dsParts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
        SelectCommand="SELECT [PartName] FROM [Parts] ORDER BY [PartName]">
    </asp:SqlDataSource>
    <asp:Label ID="lblDropdownParts" runat="server" Text="Select an Item:"></asp:Label>
    <asp:DropDownList ID="ddlPartName" runat="server" AutoPostBack="True" 
        DataSourceID="dsParts" DataTextField="PartName" DataValueField="PartName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dsPartsListed" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
        SelectCommand="SELECT [PartId], [PartName], [PartDescription], [SerialNumber], [Price], [ImageOnFile] FROM [Parts] WHERE ([PartName] = @PartName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPartName" Name="PartName" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="dlParts" runat="server" CellPadding="4" DataKeyField="PartId" 
        DataSourceID="dsPartsListed" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="style3">
                <tr>
                    <td class="style4">
                        PartId</td>
                    <td class="style4">
                        PartName</td>
                    <td class="style4">
                        PartDescription</td>
                    <td class="style4">
                        Price</td>
                    <td class="style4">
                        SerialNumber</td>
                    <td class="style4">
                        ImageOnFile</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="style3" border="1">
                <tr>
                    <td class="style4" width="50">
                        <asp:Label ID="PartIdLabel" runat="server" Text='<%# Eval("PartId") %>' />
                    </td>
                    <td class="style4">
                        <asp:Label ID="PartNameLabel" runat="server" Text='<%# Eval("PartName") %>' />
                    </td>
                    <td class="style4">
                        <asp:Label ID="PartDescriptionLabel" runat="server" 
                            Text='<%# Eval("PartDescription") %>' />
                    </td>
                    <td class="style4">
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td class="style4">
                        <asp:Label ID="SerialNumberLabel" runat="server" 
                            Text='<%# Eval("SerialNumber") %>' />
                    </td>
                    <td class="style4">
                        <asp:Label ID="ImageOnFileLabel" runat="server" 
                            Text='<%# Eval("ImageOnFile") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

