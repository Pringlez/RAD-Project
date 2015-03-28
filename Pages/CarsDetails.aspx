<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CarsDetails.aspx.cs" Inherits="Pages_CarsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="lbl1" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
        SelectCommand="SELECT [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile] FROM [Cars] WHERE ([CarId] = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CarId" QueryStringField="carID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
     <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
        GroupItemCount="3">
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
                    <table>
                        <tr>
                            <td style="font-family: Arial, Sans-Serif; color: Red; font-size: 12pt; font-weight: bold"
                                align="center" valign="top">
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Make") %>' /><br />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 230px; width: 290px" align="center" valign="top">
                               <asp:Image ID="image1" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("ImageOnFile","~/{0}") %>' />
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
                                    Text='<%# "Body-Type:" +Eval("BodyType") %>' /> <br />
                                     
                            </td>
                        </tr>
                            <tr>
                                   <td style="font-family: Arial, Sans-Serif; color: Red;
                                    font-size: 12pt; font-weight: bold" align="center" valign="top" >
                                     <asp:Button ID="Button3" runat="server" Text="Add To Cart"  BackColor="Red"   />
                                     <br />
                                     <asp:Button ID="Button4" runat="server" Text="Back"  BackColor="Red"   />
                                   
                                    </td>
                            </tr>
                        <tr>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    </asp:Content>

