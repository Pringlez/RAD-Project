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
    <asp:GridView ID="gvwCarsOverview" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataSourceID="dsCarsOverview" Width="938px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ModelID" HeaderText="ModelID" 
                SortExpression="ModelID" />
            <asp:BoundField DataField="MakeID" HeaderText="MakeID" 
                SortExpression="MakeID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Descrption" HeaderText="Descrption" 
                SortExpression="Descrption" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
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

