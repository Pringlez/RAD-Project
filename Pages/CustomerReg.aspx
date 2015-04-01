<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerReg.aspx.cs" Inherits="CustomerReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="pageLabelColor">
        Customer Registration</h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="#009900" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                First Name:
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                Last Name:
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" Width="214px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                Address:
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                E-mail:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                Password:
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                Confirm Password:
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassw" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                Mobile:
            </td>
            <td>
                <asp:TextBox ID="txtMobileNum" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                Date Of Birth:
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CustomerLogin.aspx">Login Now</asp:HyperLink>
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
