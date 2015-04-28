<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerReg.aspx.cs" Inherits="CustomerReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 class="pageLabelColor">
        Customer Registration</h1>
    <asp:Label ID="lblResult" runat="server" CssClass="boldTextMedium"></asp:Label>
    <table align="center">
        <tr>
            <td style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblFirstName" runat="server" CssClass="pageLabelColor boldTextMedium">First <u>N</u>ame: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" Width="215px" AccessKey="N"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFirstName" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="First Name Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblLastName" runat="server" CssClass="pageLabelColor boldTextMedium">Last Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredLastName" runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="Last Name Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblAddress" runat="server" CssClass="pageLabelColor boldTextMedium">Address: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ControlToValidate="txtAddress"
                    ErrorMessage="Address Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblEmail" runat="server" CssClass="pageLabelColor boldTextMedium">Email: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="E-Mail Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                    ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Not Valid Email Address!"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPassw" Display="Dynamic" ErrorMessage="Passwords Must Match!"
                    Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblConfirmPassword" runat="server" CssClass="pageLabelColor boldTextMedium">Confirm Password: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassw" runat="server" TextMode="Password" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredConfirmPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Confirm Password Field Required" Display="Dynamic" Font-Bold="True"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="pageLabelColor" style="font-weight: bold; text-align: right;">
                <asp:Label ID="lblModile" runat="server" CssClass="pageLabelColor boldTextMedium">Mobile: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNum" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobileNum"
                    ErrorMessage="Mobile Field Required " Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server"
                    ControlToValidate="txtMobileNum" Display="Dynamic" ErrorMessage="Not A Valid Mobile Number! (0XX-XXXXXXX)"
                    ValidationExpression="0\d{1,3}-\d{1,7}" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
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
            <td>
                <asp:RequiredFieldValidator ID="RequiredDateOfBirth" runat="server" ControlToValidate="txtDOB"
                    ErrorMessage="Date Of Birth Field Required " Display="Dynamic" Font-Bold="True"
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorDOB" runat="server"
                    ControlToValidate="txtDOB" Display="Dynamic" ErrorMessage="Not A Valid Date Of Birth! (DD/MM/YYYY)"
                    ValidationExpression="(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/\d{4}" Font-Bold="True"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <br />
                <asp:Button ID="btnSubmit" runat="server" CssClass="boldTextSmall buttonSmall" Text="Submit" Width="99px" OnClick="btnSubmit_Click"
                    Font-Bold="True" />
                <asp:Button ID="btnReset" runat="server" CssClass="boldTextSmall buttonSmall" Text="Reset" Width="99px" Font-Bold="True"
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
    <asp:ValidationSummary ID="vsErrors" runat="server" Font-Bold="True" 
        Font-Size="Medium" ForeColor="Red" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
