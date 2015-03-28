<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminReg.aspx.cs" Inherits="AdminReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000099;
            text-align: center;
        }
        .style20
        {
            text-align: right;
            width: 279px;
            color: #000000;
        }
        .style14
        {
            height: 26px;
            width: 218px;
        }
        .style15
        {
            text-align: left;
            height: 26px;
            width: 171px;
        }
        .style13
        {
            width: 279px;
            text-align: right;
            height: 26px;
            color: #000000;
        }
        .style18
        {
            width: 218px;
        }
        .style16
        {
            text-align: left;
            width: 171px;
        }
        .style3
        {
            width: 279px;
            text-align: right;
            height: 8px;
            color: #000000;
        }
        .style4
        {
            height: 8px;
            text-align: left;
            width: 176px;
        }
        .style17
        {
            height: 8px;
            text-align: left;
            width: 171px;
        }
        .style5
        {
            width: 279px;
            text-align: right;
            height: 30px;
        }
        .style10
        {
            height: 30px;
            text-align: left;
            width: 218px;
        }
        #Reset1
        {
            width: 74px;
        }
        .style6
        {
            height: 30px;
            width: 171px;
        }
        .style11
        {
            text-align: right;
            width: 171px;
        }
        #btnReset
        {
            width: 74px;
            text-align: right;
        }
        .style21
        {
            height: 8px;
            text-align: left;
            width: 218px;
        }
        .style22
        {
            text-align: left;
            width: 218px;
        }
        .style23
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="style1">
        Admin Registration</h1>
    <table class="style23">
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" ForeColor="#009900" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <table align="center" class="style1">
        <tr>
            <td class="style20">
                Name:
            </td>
            <td class="style14">
                <asp:TextBox ID="txtName" runat="server" Width="215px"></asp:TextBox>
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style13">
                Address:
            </td>
            <td class="style14">
                <asp:TextBox ID="txtAddress" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style20">
                E-mail:
            </td>
            <td class="style18">
                <asp:TextBox ID="txtEmail" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style20">
                Password:
            </td>
            <td class="style18">
                <asp:TextBox ID="txtPassword" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style20">
                Confirm Password:
            </td>
            <td class="style18">
                <asp:TextBox ID="txtConfirmPassw" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="style16">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mobile:
            </td>
            <td class="style21">
                <asp:TextBox ID="txtMobileNum" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td class="style17">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style21">
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style5">
            </td>
            <td class="style10">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="99px" OnClick="btnSubmit_Click"
                    Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="99px" Font-Bold="True"
                    OnClick="btnReset_Click" />
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;
            </td>
            <td class="style22">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/AdminLogin.aspx">Login Now</asp:HyperLink>
            </td>
            <td class="style11">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
