<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Welcome to Car Zone</h1>
    <p class="boldTextMedium">
        Below is a list of our featured cars! We strive to provide the very best!</p>
    <h2 style="color: #3366CC;">
        Featured Cars</h2>
    <div>
        <asp:SqlDataSource ID="dsCars" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
            SelectCommand="SELECT [CarId], [Make], [Price], [ImageOnFile] FROM [Cars] ORDER BY [Make]">
        </asp:SqlDataSource>
    </div>
    <asp:ListView ID="lvwCars" runat="server" DataSourceID="dsCars" GroupItemCount="3">
        <EmptyDataTemplate>
            <table id="Table1" runat="server">
                <tr>
                    <td>
                        No data was returned.
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
                            <asp:Label ID="lblMake" runat="server" Text='<%# Eval("Make") %>' /><br />
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="displayCarsTable-3">
                            <asp:Image ID="imgCar" runat="server" CssClass="productImage" ImageUrl='<%# Eval("ImageOnFile") %>' /><br />
                            <asp:Button ID="btnDetails" runat="server" Text="Details" CssClass="button" BackColor="#3366CC"
                                Font-Bold="true" PostBackUrl='<%# Eval("CarId","Pages/CarsDetails.aspx?carID={0}") %>' />
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
                                <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="boldTextSmall buttonPager"
                                    ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
