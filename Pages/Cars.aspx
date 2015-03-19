<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Pages_Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    Select Model:&nbsp;&nbsp;
    <asp:DropDownList ID="ddlCarMake" runat="server" AutoPostBack="True" 
        DataSourceID="sdsCarMake" DataTextField="Name" DataValueField="ModelID" 
        onselectedindexchanged="ddlCarMake_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsCarMake" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDatabaseConnectionString %>" 
        SelectCommand="SELECT * FROM [CarModels] WHERE ([ModelID] = @ModelID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCarMake" Name="ModelID" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:Label ID="lblOutput" runat="server"></asp:Label>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

