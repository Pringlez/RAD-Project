<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CarsDetails.aspx.cs" Inherits="Pages_CarsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Car's Details</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile] FROM [Cars] WHERE ([CarId] = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CarId" QueryStringField="carID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="lvwCarDetails" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
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
                <table class="displayCarDetails">
                    <tr>
                        <td class="displayCarsTable-2">
                            <asp:Label ID="lblMake" runat="server" Text='<%# Eval("Make") %>' /><br />
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="displayCarsTable-3">
                            <asp:Image ID="imgCar" runat="server" CssClass="productImage" ImageUrl='<%# Eval("ImageOnFile","~/{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="displayCarsTable-4">
                            <asp:Label ID="lblModel" runat="server" Text='<%# "Model: "+ Eval("Model") %>' />
                            <br />
                            <br />
                            <asp:Label ID="lblEngineSize" runat="server" Text='<%# "Engine Size: " + Eval("EngineSize") %>' />
                            <br />
                            <br />
                            <asp:Label ID="lblColor" runat="server" Text='<%# "Color: " + Eval("Color") %>' />
                            <br />
                            <br />
                            <asp:Label ID="lblFuelType" runat="server" Text='<%# "Fuel-Type: " + Eval("FuelType") %>' />
                            <br />
                            <br />
                            <asp:Label ID="lblBodyType" runat="server" Text='<%# "Body-Type: " + Eval("BodyType") %>' />
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
            </table>
        </LayoutTemplate>
    </asp:ListView>
    <div style="width: 100%; text-align: center;">
        <asp:Button ID="btnAddToCar" runat="server" Text="Add To Cart" CssClass="button"
            BackColor="#3366CC" OnClick="AddToCart_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
