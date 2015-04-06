<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Parts.aspx.cs" Inherits="Parts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Parts</h1>
    <asp:Label ID="lblResult" runat="server" CssClass="boldTextMedium"></asp:Label>
    <asp:SqlDataSource ID="dsParts" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Manufacturer] FROM [Parts]"></asp:SqlDataSource>
    <br />
    <table cellpadding="5" align="center" width="99%">
        <tr>
            <td align="center">
                <asp:Label ID="lblDropDownManufacturer" runat="server" Text="Select Manufacturer: "
                    CssClass="boldTextLarger"></asp:Label>
                <asp:DropDownList ID="ddlMake" runat="server" AutoPostBack="True" DataSourceID="dsParts"
                    DataTextField="Manufacturer" DataValueField="Manufacturer" CssClass="boldTextMedium">
                </asp:DropDownList>
            </td>
            <td align="center">
                <asp:Label ID="lblDropDownPrice" runat="server" Text="Select Price Range: " CssClass="boldTextLarger"></asp:Label>
                <asp:DropDownList ID="ddlPrice" runat="server" AutoPostBack="True" CssClass="boldTextMedium">
                    <asp:ListItem Value="100">€100 and Lower</asp:ListItem>
                    <asp:ListItem Value="250">€250 and Lower</asp:ListItem>
                    <asp:ListItem Value="500">€500 and Lower</asp:ListItem>
                    <asp:ListItem Value="750">€750 and Lower</asp:ListItem>
                    <asp:ListItem Value="1000">€1000 and Lower</asp:ListItem>
                    <asp:ListItem Value="1500">€1500 and Lower</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:SqlDataSource ID="dsPartsListed" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [PartId], [PartName], [PartDescription], [Manufacturer], [Price], [SerialNumber], [Quantity], [ImageOnFile] FROM [Parts] WHERE (([Manufacturer] = @Manufacturer) AND ([Price] &lt;= @Price))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlMake" Name="Manufacturer" PropertyName="SelectedValue"
                Type="String" />
            <asp:ControlParameter ControlID="ddlPrice" Name="Price" PropertyName="SelectedValue"
                Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="lvwCars" runat="server" DataSourceID="dsPartsListed" GroupItemCount="3"
        OnItemCommand="lvw_partsItemCommand">
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td class="boldText">
                        No Parts Found!
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td id="Td1" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td>
                <table class="displayCarsTable-1">
                    <tr>
                        <td class="displayCarsTable-2">
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Manufacturer") %>' /><br />
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="displayCarsTable-3">
                            <asp:Image ID="imgCar" runat="server" CssClass="productImage" AlternateText="Image Cover"
                                ImageUrl='<%# Eval("ImageOnFile","~/{0}") %>' />
                            <asp:Label ID="lblQuantity1" runat="server" CssClass="displayCarsTable-2" Text='Available: ' />
                            <asp:Label ID="lblQuantity2" runat="server" CssClass="displayCarsTable-2" Text='<%# Eval("Quantity") %>' /><br />
                            <asp:Button ID="btnAddtoCart" runat="server" Text="Add To Cart" CssClass="button"
                                BackColor="#3366CC" CommandName="lvw_partsItemCommand" CommandArgument='<%#Eval("PartId") + ";" + Eval("Quantity") %>' />
                        </td>
                    </tr>
                </table>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td2" runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td3" runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
