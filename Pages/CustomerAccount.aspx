<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Customer Account</h1>
    <table>
        <tr>
            <td style="width: 100%;">
            </td>
            <td>
                <asp:Label ID="lblWelcome" runat="server" Style="text-align: right"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblUser" runat="server" ForeColor="#006600" Style="text-align: right"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button_LogOut" runat="server" ForeColor="#0000CC" OnClick="Button_LogOut_Click"
                    Style="text-align: right" Text="Log Out" Width="69px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
