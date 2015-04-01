<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Parts.aspx.cs" Inherits="Parts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:SqlDataSource ID="dsParts" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Manufacturer] FROM [Parts]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="lblDropdownParts" runat="server" Text="Select a Manufacturer: "></asp:Label>
    <asp:DropDownList ID="ddlPartName" runat="server" AutoPostBack="True" DataSourceID="dsParts"
        DataTextField="Manufacturer" DataValueField="Manufacturer">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="dsPartsListed" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [PartId],[PartName], [Manufacturer], [Price], [Quantity], [ImageOnFile] FROM [Parts] WHERE ([Manufacturer] = @Manufacturer) ORDER BY [Manufacturer]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPartName" Name="Manufacturer" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
       <asp:ListView ID="lvwCars" runat="server" DataSourceID="dsPartsListed" 
        GroupItemCount="3" onitemcommand="lvw_partsItemCommand">
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
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Manufacturer") %>' /><br />
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="displayCarsTable-3">
                            <asp:Image ID="imgCar" runat="server" CssClass="productImage" AlternateText="Image Cover"
                                ImageUrl='<%# Eval("ImageOnFile","~/{0}") %>' />
                            <asp:Button ID="btnDetails" runat="server" Text="Add To Cart" CssClass="button" BackColor="#3366CC"
                               
                                CommandName="lvw_partsItemCommand" 
                                CommandArgument='<%#Eval("PartId") %>' />
                                  
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
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
