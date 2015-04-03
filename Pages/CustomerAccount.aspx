<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Customer Account</h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" CssClass="boldTextMedium"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 100%;">
            </td>
            <td>
                <asp:Label ID="lblWelcome" runat="server" Style="text-align: right" CssClass="boldTextMedium"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblUser" runat="server" ForeColor="#006600" Style="text-align: right"
                    CssClass="boldTextMedium"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button_LogOut" runat="server" CssClass="boldTextSmall" OnClick="Button_LogOut_Click"
                    Style="text-align: right" Text="Log Out" Width="69px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table align="center">
        <tr>
            <td style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblCustomerId" runat="server" CssClass="pageLabelColor boldTextMedium">Customer ID: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCustomerId" runat="server" Width="215px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
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
                <asp:TextBox ID="txtEmail" runat="server" Width="212px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblConfirmPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Confirm Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassw" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
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
                <asp:Label ID="lblDateOfDirth" runat="server" CssClass="pageLabelColor boldTextMedium">Date Of Birth: </asp:Label>
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
                <asp:Button ID="btnUpdate" runat="server" CssClass="boldTextSmall" Text="Update Details" Width="110px" OnClick="btnUpdate_Click"
                    Font-Bold="True" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
