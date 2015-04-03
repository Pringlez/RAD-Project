﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerReg.aspx.cs" Inherits="CustomerReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="pageLabelColor">
        Customer Registration</h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" CssClass="boldTextMedium"></asp:Label>
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblFirstName" runat="server" CssClass="pageLabelColor boldTextMedium">First Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblLastName" runat="server" CssClass="pageLabelColor boldTextMedium">Last Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblAddress" runat="server" CssClass="pageLabelColor boldTextMedium">Address: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblEmail" runat="server" CssClass="pageLabelColor boldTextMedium">Email: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblConfirmPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Confirm Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassw" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblModile" runat="server" CssClass="pageLabelColor boldTextMedium">Mobile: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNum" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblDateOfDirth" runat="server" CssClass="pageLabelColor boldTextMedium">Date Of Birth:: </asp:Label>
            </td>
            <td>
                <table align="center">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtDOB" runat="server" Width="212px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="99px" OnClick="btnSubmit_Click"
                    Font-Bold="True" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="99px" Font-Bold="True"
                    OnClick="btnReset_Click" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CustomerLogin.aspx" CssClass="boldTextMedium">Login Now</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
