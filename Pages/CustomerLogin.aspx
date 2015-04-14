<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerLogin.aspx.cs" Inherits="CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="pageLabelColor">
        Customer Login</h1>
    <asp:Label ID="lblResult" runat="server" CssClass="boldTextMedium"></asp:Label>
    <div>
        <table align="center">
            <tr>
                <td style="font-weight: bold; text-align: right;">
                    <asp:Label ID="lblEmail" runat="server" CssClass="pageLabelColor boldTextMedium">Email: </asp:Label>
                </td>
                <td width="180px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox><br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="E-Mail Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold; text-align: right;">
                    <asp:Label ID="lblPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Password: </asp:Label>
                </td>
                <td width="180px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="Password Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <br />
                    <asp:Button ID="btnLogin" runat="server" CssClass="boldTextSmall buttonSmall" Text="Login"
                        Width="96px" OnClick="Button_Login_Click" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0000CC" NavigateUrl="~/Pages/CustomerReg.aspx"
                        CssClass="boldTextMedium">New User Register Here</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
