﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="pageLabelColor">
        Admin Login</h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
    </table>
    <div>
        <table align="center">
            <tr>
                <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                    Email:
                </td>
                <td width="180px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                    Password:
                </td>
                <td width="180px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="96px" OnClick="Button_Login_Click"
                        Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0000CC" NavigateUrl="~/Pages/AdminReg.aspx">New Admin Register Here</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
