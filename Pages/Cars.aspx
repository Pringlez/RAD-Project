<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="dsManufacturer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarProjectDBConnectionString %>" 
        
        SelectCommand="SELECT [ShortName] FROM [Manufacturer] ORDER BY [ShortName]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCars" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarProjectDBConnectionString %>" 
        SelectCommand="SELECT [Images], [Price], [Make], [Model], [EngineSize], [Color], [FuelType], [BodyType] FROM [Car] WHERE ([Make] = @Make)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCars" Name="Make" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:Label ID="lblDropdownCars" runat="server" Text="Select a Make:"></asp:Label>
    <asp:DropDownList ID="ddlCars" runat="server" AutoPostBack="True" 
        DataSourceID="dsManufacturer" DataTextField="ShortName" 
        DataValueField="ShortName">
    </asp:DropDownList>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="dsCars" 
        GroupItemCount="3">
      
       
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
       
        <ItemTemplate>
                <td>
                    <table>
                        <tr>
                            <td style="font-family: Arial, Sans-Serif; color: Red;
                                font-size: 12pt; font-weight: bold" align="center" valign="top" >
                                <asp:Label ID="NameLabel" runat="server"
                                    Text='<%# Eval("Make") %>' /> <br />
                                <asp:Label ID="Label2" runat="server"
                                    Text='<%# Eval("Price","{0:c}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 230px; width: 290px"
                                align="center" valign="top">
                                <asp:Image ID="imgCover" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("Images","~/{0}") %>' />
                               
                               
                            </td>
                        </tr>

                         <tr>
                            <td style="font-family: Arial, Sans-Serif; color: Red;
                                font-size: 12pt; font-weight: bold" align="center" valign="top" >
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# "Model:"+ Eval("Model") %>' /> <br />
                                <asp:Label ID="Label3" runat="server"
                                    Text='<%# "Engine Size:" + Eval("EngineSize") %>' />
                                    <br />
                                   
                                    <asp:Label ID="Label5" runat="server"
                                    Text='<%# "Color: " + Eval("Color") %>' />
                                    <br />
                                    <asp:Label ID="Label6" runat="server"
                                    Text='<%# "Fuel-Type: " + Eval("FuelType") %>' />
                                     <br />
                                     <asp:Label ID="Label7" runat="server"
                                    Text='<%# "Body-Type:" +Eval("BodyType") %>' />
                                      <br />
                                      <br />
                                     <asp:Button ID="Button1" runat="server" Text="Add To Cart" BackColor="Red" />
                            </td>
                        </tr>
                        <tr>
                          
                        
                        </tr>
                    </table>
                </td>
            </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>
    <br />
    <br />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

