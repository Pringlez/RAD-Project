<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PartsOverview.aspx.cs" Inherits="Pages_PartsOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        color: #0000CC;
    }
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 455px;
    }
    .style4
    {
        width: 113px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1 class="style1">
    Parts Overview</h1>
<p class="style1">
    &nbsp;</p>
<table class="style2">
    <tr>
        <td class="style3">
            <asp:GridView ID="gvwParts" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PartId" 
                DataSourceID="dsPartsOverview" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="PartId" HeaderText="PartId" InsertVisible="False" 
                        ReadOnly="True" SortExpression="PartId" />
                    <asp:BoundField DataField="PartName" HeaderText="PartName" 
                        SortExpression="PartName" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                        SortExpression="Manufacturer" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
        <td class="style4">
            &nbsp;</td>
        <td>
            <asp:DetailsView ID="dvwParts" runat="server" AutoGenerateRows="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataKeyNames="PartId" 
                DataSourceID="dsPartsOverview2" Height="50px" 
                onitemdeleted="dvwParts_ItemDeleted" oniteminserted="dvwParts_ItemInserted" 
                onitemupdated="dvwParts_ItemUpdated" Width="220px">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="PartId" HeaderText="PartId" InsertVisible="False" 
                        ReadOnly="True" SortExpression="PartId" />
                    <asp:BoundField DataField="PartName" HeaderText="PartName" 
                        SortExpression="PartName" />
                    <asp:BoundField DataField="PartDescription" HeaderText="PartDescription" 
                        SortExpression="PartDescription" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" 
                        SortExpression="Manufacturer" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" 
                        SortExpression="SerialNumber" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="ImageOnFile" HeaderText="ImageOnFile" 
                        SortExpression="ImageOnFile" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                        ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:SqlDataSource ID="dsPartsOverview" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
                SelectCommand="SELECT [PartId], [PartName], [Quantity], [Manufacturer] FROM [Parts] ORDER BY [PartId]">
            </asp:SqlDataSource>
        </td>
        <td class="style4">
            <asp:SqlDataSource ID="dsPartsOverview2" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
                DeleteCommand="DELETE FROM [Parts] WHERE [PartId] = @original_PartId AND [PartName] = @original_PartName AND (([PartDescription] = @original_PartDescription) OR ([PartDescription] IS NULL AND @original_PartDescription IS NULL)) AND [Manufacturer] = @original_Manufacturer AND [Price] = @original_Price AND [SerialNumber] = @original_SerialNumber AND [Quantity] = @original_Quantity AND (([ImageOnFile] = @original_ImageOnFile) OR ([ImageOnFile] IS NULL AND @original_ImageOnFile IS NULL))" 
                InsertCommand="INSERT INTO [Parts] ([PartName], [PartDescription], [Manufacturer], [Price], [SerialNumber], [Quantity], [ImageOnFile]) VALUES (@PartName, @PartDescription, @Manufacturer, @Price, @SerialNumber, @Quantity, @ImageOnFile)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [Parts] WHERE ([PartId] = @PartId)" 
                UpdateCommand="UPDATE [Parts] SET [PartName] = @PartName, [PartDescription] = @PartDescription, [Manufacturer] = @Manufacturer, [Price] = @Price, [SerialNumber] = @SerialNumber, [Quantity] = @Quantity, [ImageOnFile] = @ImageOnFile WHERE [PartId] = @original_PartId AND [PartName] = @original_PartName AND (([PartDescription] = @original_PartDescription) OR ([PartDescription] IS NULL AND @original_PartDescription IS NULL)) AND [Manufacturer] = @original_Manufacturer AND [Price] = @original_Price AND [SerialNumber] = @original_SerialNumber AND [Quantity] = @original_Quantity AND (([ImageOnFile] = @original_ImageOnFile) OR ([ImageOnFile] IS NULL AND @original_ImageOnFile IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_PartId" Type="Int32" />
                    <asp:Parameter Name="original_PartName" Type="String" />
                    <asp:Parameter Name="original_PartDescription" Type="String" />
                    <asp:Parameter Name="original_Manufacturer" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_SerialNumber" Type="Int32" />
                    <asp:Parameter Name="original_Quantity" Type="Int32" />
                    <asp:Parameter Name="original_ImageOnFile" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PartName" Type="String" />
                    <asp:Parameter Name="PartDescription" Type="String" />
                    <asp:Parameter Name="Manufacturer" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="SerialNumber" Type="Int32" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="ImageOnFile" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvwParts" Name="PartId" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PartName" Type="String" />
                    <asp:Parameter Name="PartDescription" Type="String" />
                    <asp:Parameter Name="Manufacturer" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="SerialNumber" Type="Int32" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="ImageOnFile" Type="String" />
                    <asp:Parameter Name="original_PartId" Type="Int32" />
                    <asp:Parameter Name="original_PartName" Type="String" />
                    <asp:Parameter Name="original_PartDescription" Type="String" />
                    <asp:Parameter Name="original_Manufacturer" Type="String" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_SerialNumber" Type="Int32" />
                    <asp:Parameter Name="original_Quantity" Type="Int32" />
                    <asp:Parameter Name="original_ImageOnFile" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

