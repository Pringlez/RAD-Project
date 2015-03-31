<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Cars.aspx.cs" Inherits="Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:SqlDataSource ID="dsManufacture" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Make] FROM [Cars] ORDER BY [Make]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="lblDropdownCars" runat="server" Text="Select a Make:"></asp:Label>
    <asp:DropDownList ID="ddlMakeList" runat="server" AutoPostBack="True" DataSourceID="dsManufacture"
        DataTextField="Make" DataValueField="Make">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="dsCars" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [carId], [Make], [Model], [EngineSize], [FuelType], [BodyType], [Color], [Price], [ImageOnFile] FROM [Cars] WHERE ([Make] = @Make)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlMakeList" DefaultValue="ALL" Name="Make" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="lvwCars" runat="server" DataSourceID="dsCars" GroupItemCount="3">
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
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
                    <tr>
                        <td>
                            <%--
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# "Model:"+ Eval("Model") %>' /> <br />
                                    
                                    <asp:Label ID="Label3" runat="server
                                    Text='<%# "Engine Size:" + Eval("EngineSize") %>' >
                                    <br />
                                   
                                    <asp:Label ID="Label5" runat="server"
                                    Text='<%# "Color: " + Eval("Color") %>' />
                                    <br />
                                    <asp:Label ID="Label6" runat="server"
                                    Text='<%# "Fuel-Type: " + Eval("FuelType") %>' />
                                     <br />
                                     <asp:Label ID="Label7" runat="server"
                                    Text='<%# "Body-Type:" +Eval("BodyType") %>' /> <br />
                            --%>
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
