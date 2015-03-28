<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageManagement.master" AutoEventWireup="true" CodeFile="CarsOverview.aspx.cs" Inherits="Pages_CarsOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        color: #0000CC;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1 class="style1">
    Cars Overview Page</h1>
<p class="style1">
    <asp:SqlDataSource ID="dsCarsOverview" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDatabaseConnectionString %>" 
        InsertCommand="INSERT INTO [CarModels] ([ModelID], [MakeID], [Name], [Descrption], [Price], [Image]) VALUES (@ModelID, @MakeID, @Name, @Descrption, @Price, @Image)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [CarModels]" 
        ConflictDetection="CompareAllValues">
        <InsertParameters>
            <asp:Parameter Name="ModelID" Type="String" />
            <asp:Parameter Name="MakeID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Descrption" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

