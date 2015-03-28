<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #3366CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1 class="style1">
        Welcome to Car Zone</h1>
    <p class="style1">
        <asp:SqlDataSource ID="dsCars" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CarProjectDBConnectionString %>" 
            
            SelectCommand="SELECT [Images], [Make], [Price] FROM [Car] ORDER BY [Make]">
        </asp:SqlDataSource>
</p>
<p class="style1">
        &nbsp;</p>
<p class="style1">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="dsCars" 
            GroupItemCount="3">
        
           
            <EmptyDataTemplate>
                <table runat="server" style="">
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
                                    Text='<%# Eval("Make") %>' /><br />
                                <asp:Label ID="Label2" runat="server"
                                    Text='<%# Eval("Price","{0:c}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 230px; width: 290px"
                                align="center" valign="top">
                                <asp:Image ID="Image1" runat="server"
                                     ImageUrl='<%# Eval("Images") %>'
                                       />
                               
                                <asp:Button ID="Button1" runat="server" Text="Find More" BackColor="Red" />
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
                            <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr ID="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
           
        </asp:ListView>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

