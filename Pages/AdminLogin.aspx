﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000099;
            text-align: center;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="style1">
        Admin Login</h1>
    <table class="style3">
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
    </table>
    <p class="style1">
        <table align="center" class="style2">
            <tr>
                <td class="style32">
                </td>
                <td width="180px">
                </td>
                <td class="style32">
                </td>
            </tr>
            <tr>
                <td class="style30">
                </td>
                <td width="180px">
                </td>
                <td class="style31">
                </td>
            </tr>
            <tr>
                <td class="style19">
                    Email
                </td>
                <td width="180px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style20">
                </td>
            </tr>
            <tr>
                <td class="style21">
                    Password
                </td>
                <td class="style22" width="180px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="style23">
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;
                </td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="96px" OnClick="Button_Login_Click"
                        Font-Bold="True" />
                </td>
                <td class="style20">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0000CC" NavigateUrl="~/Pages/AdminReg.aspx">New Admin Register Here</asp:HyperLink>
                </td>
                <td class="style20">
                    &nbsp;
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
