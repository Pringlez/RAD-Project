<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000099;
        }
        .style2
        {
            width: 100%;
        }
        .style4
        {
            width: 747px;
        }
        .style6
        {
            width: 1350px;
        }
        .style7
        {
            width: 510px;
            height: 23px;
        }
        .style8
        {
            width: 510px;
            text-align: right;
        }
        .style9
        {
            width: 1350px;
            height: 23px;
        }
        .style10
        {
            width: 747px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="style1">
        Customer Account</h1>
    <table class="style2">
        <tr>
            <td class="style6">
                &nbsp;
            </td>
            <td class="style8">
                <asp:Label ID="lblWelcome" runat="server" Style="text-align: right"></asp:Label>
                :
            </td>
            <td class="style4">
                <asp:Label ID="lblUser" runat="server" ForeColor="#006600" Style="text-align: right"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button_LogOut" runat="server" ForeColor="#0000CC" OnClick="Button_LogOut_Click"
                    Style="text-align: right" Text="Log Out" Width="69px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style7">
            </td>
            <td class="style10">
            </td>
            <td class="style11">
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
