<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Cars.aspx.cs" Inherits="Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Cars</h1>
    <asp:SqlDataSource ID="dsManufacture" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Make] FROM [Cars] ORDER BY [Make]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsColor" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Color] FROM [Cars] ORDER BY [Color]"></asp:SqlDataSource>
    <br />
    <table cellpadding="5" align="center" width="99%">
        <tr>
            <td align="center">
                <asp:Label ID="lblDropDownMake" runat="server" Text="Select Manufacturer: " CssClass="boldTextLarger"></asp:Label>
                <asp:DropDownList ID="ddlMakeList" runat="server" AutoPostBack="True" DataSourceID="dsManufacture"
                    DataTextField="Make" DataValueField="Make" CssClass="boldTextMedium">
                </asp:DropDownList>
            </td>
            <td align="center" width="50%">
                <asp:Label ID="lblDropDownColor" runat="server" Text="Select Color: " CssClass="boldTextLarger"></asp:Label>
                <asp:DropDownList ID="ddlColorList" runat="server" AutoPostBack="True" DataSourceID="dsColor"
                    DataTextField="Color" DataValueField="Color" CssClass="boldTextMedium">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:SqlDataSource ID="dsCars" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile] FROM [Cars] WHERE (([Make] = @Make) AND ([Color] = @Color))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlMakeList" Name="Make" PropertyName="SelectedValue"
                Type="String" />
            <asp:ControlParameter ControlID="ddlColorList" Name="Color" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="lvwCars" runat="server" DataSourceID="dsCars" GroupItemCount="3">
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="font-size: larger; font-weight: bold;">
                <tr>
                    <td class="boldText">
                        No Cars Found!
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
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Make") %>' /><br />
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="displayCarsTable-3">
                            <asp:Image ID="imgCar" runat="server" CssClass="productImage" AlternateText="Image Cover"
                                ImageUrl='<%# Eval("ImageOnFile","~/{0}") %>' />
                            <asp:Button ID="btnDetails" runat="server" Text="Details" CssClass="button" BackColor="#3366CC"
                                PostBackUrl='<%# Eval("CarId","CarsDetails.aspx?carID={0}") %>' />
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
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
