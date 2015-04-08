<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CarsOverview.aspx.cs" Inherits="Pages_CarsOverview" %>

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
            width: 422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1 class="style1">
        Cars Overview Page</h1>
    <p class="style1">
        &nbsp;</p>
    <table class="style2">
        <tr>
            <td class="style3">
                <asp:GridView ID="gvwCarsOverview" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="CarId" DataSourceID="dsCarsOverview" 
                    ForeColor="#333333" GridLines="None" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CarId" HeaderText="CarId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="CarId" />
                        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
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
            <td align="center">
                <asp:DetailsView ID="dvwCarsOverview" runat="server" 
                    AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                    DataKeyNames="CarId" DataSourceID="dsCarsOverview2" Height="50px" 
                    Width="255px" onitemdeleted="dvwCarsOverview_ItemDeleted" 
                    oniteminserted="dvwCarsOverview_ItemInserted" 
                    onitemupdated="dvwCarsOverview_ItemUpdated">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="CarId" HeaderText="CarId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="CarId" />
                        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="EngineSize" HeaderText="EngineSize" 
                            SortExpression="EngineSize" />
                        <asp:BoundField DataField="FuelType" HeaderText="FuelType" 
                            SortExpression="FuelType" />
                        <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                        <asp:BoundField DataField="BodyType" HeaderText="BodyType" 
                            SortExpression="BodyType" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
                <asp:SqlDataSource ID="dsCarsOverview" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
                    SelectCommand="SELECT [CarId], [Make], [Price], [Model] FROM [Cars] ORDER BY [Make]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="dsCarsOverview2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
                    DeleteCommand="DELETE FROM [Cars] WHERE [CarId] = @original_CarId AND [Make] = @original_Make AND [Model] = @original_Model AND [EngineSize] = @original_EngineSize AND [FuelType] = @original_FuelType AND [Color] = @original_Color AND [BodyType] = @original_BodyType AND [Price] = @original_Price AND (([ImageOnFile] = @original_ImageOnFile) OR ([ImageOnFile] IS NULL AND @original_ImageOnFile IS NULL))" 
                    InsertCommand="INSERT INTO [Cars] ([Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile]) VALUES (@Make, @Model, @EngineSize, @FuelType, @Color, @BodyType, @Price, @ImageOnFile)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Cars] WHERE ([CarId] = @CarId)" 
                    UpdateCommand="UPDATE [Cars] SET [Make] = @Make, [Model] = @Model, [EngineSize] = @EngineSize, [FuelType] = @FuelType, [Color] = @Color, [BodyType] = @BodyType, [Price] = @Price, [ImageOnFile] = @ImageOnFile WHERE [CarId] = @original_CarId AND [Make] = @original_Make AND [Model] = @original_Model AND [EngineSize] = @original_EngineSize AND [FuelType] = @original_FuelType AND [Color] = @original_Color AND [BodyType] = @original_BodyType AND [Price] = @original_Price AND (([ImageOnFile] = @original_ImageOnFile) OR ([ImageOnFile] IS NULL AND @original_ImageOnFile IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CarId" Type="Int32" />
                        <asp:Parameter Name="original_Make" Type="String" />
                        <asp:Parameter Name="original_Model" Type="String" />
                        <asp:Parameter Name="original_EngineSize" Type="String" />
                        <asp:Parameter Name="original_FuelType" Type="String" />
                        <asp:Parameter Name="original_Color" Type="String" />
                        <asp:Parameter Name="original_BodyType" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Int32" />
                        <asp:Parameter Name="original_ImageOnFile" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Make" Type="String" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="EngineSize" Type="String" />
                        <asp:Parameter Name="FuelType" Type="String" />
                        <asp:Parameter Name="Color" Type="String" />
                        <asp:Parameter Name="BodyType" Type="String" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="ImageOnFile" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvwCarsOverview" Name="CarId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Make" Type="String" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="EngineSize" Type="String" />
                        <asp:Parameter Name="FuelType" Type="String" />
                        <asp:Parameter Name="Color" Type="String" />
                        <asp:Parameter Name="BodyType" Type="String" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="ImageOnFile" Type="String" />
                        <asp:Parameter Name="original_CarId" Type="Int32" />
                        <asp:Parameter Name="original_Make" Type="String" />
                        <asp:Parameter Name="original_Model" Type="String" />
                        <asp:Parameter Name="original_EngineSize" Type="String" />
                        <asp:Parameter Name="original_FuelType" Type="String" />
                        <asp:Parameter Name="original_Color" Type="String" />
                        <asp:Parameter Name="original_BodyType" Type="String" />
                        <asp:Parameter Name="original_Price" Type="Int32" />
                        <asp:Parameter Name="original_ImageOnFile" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p class="style1">
&nbsp;</p>
    <p class="style1">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

