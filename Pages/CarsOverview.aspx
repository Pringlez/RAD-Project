<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CarsOverview.aspx.cs" Inherits="Pages_CarsOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Cars Overview Page</h1>
    <asp:SqlDataSource ID="dsCarsOverview" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [CarId], [Make], [Price], [Model] FROM [Cars] ORDER BY [Make]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCarsOverview2" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" DeleteCommand="DELETE FROM [Cars] WHERE [CarId] = @original_CarId AND [Make] = @original_Make AND [Model] = @original_Model AND [EngineSize] = @original_EngineSize AND [FuelType] = @original_FuelType AND [Color] = @original_Color AND [BodyType] = @original_BodyType AND [Price] = @original_Price AND (([ImageOnFile] = @original_ImageOnFile) OR ([ImageOnFile] IS NULL AND @original_ImageOnFile IS NULL))"
        InsertCommand="INSERT INTO [Cars] ([Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile]) VALUES (@Make, @Model, @EngineSize, @FuelType, @Color, @BodyType, @Price, @ImageOnFile)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cars] WHERE ([CarId] = @CarId)"
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
            <asp:ControlParameter ControlID="gvwCarsOverview" Name="CarId" PropertyName="SelectedValue"
                Type="Int32" />
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
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvwCarsOverview" runat="server" AutoGenerateColumns="False" CellPadding="6"
                    DataKeyNames="CarId" DataSourceID="dsCarsOverview" ForeColor="#333333" GridLines="None"
                    AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CarId" HeaderText="CarId" InsertVisible="False" ReadOnly="True"
                            SortExpression="CarId" />
                        <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:CommandField ButtonType="Button" ControlStyle-CssClass="boldTextSmall buttonSmall"
                            ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#FFFFFF" />
                    <FooterStyle BackColor="#3366CC" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#3366CC" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td style="padding-left: 55px;">
                <asp:DetailsView ID="dvwCarsOverview" runat="server" AutoGenerateRows="False" BackColor="White"
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" DataKeyNames="CarId"
                    DataSourceID="dsCarsOverview2" Width="720px" Height="500px" OnItemDeleted="dvwCarsOverview_ItemDeleted"
                    OnItemInserted="dvwCarsOverview_ItemInserted" OnItemUpdated="dvwCarsOverview_ItemUpdated"
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <EditRowStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:TemplateField HeaderText="CarId" InsertVisible="False" SortExpression="CarId">
                            <EditItemTemplate>
                                <asp:Label ID="lblCarId" runat="server" Text='<%# Eval("CarId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblCarId" runat="server" Text='<%# Bind("CarId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Make" SortExpression="Make">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtMake" runat="server" Text='<%# Bind("Make") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredMake" runat="server" ControlToValidate="txtMake"
                                    ErrorMessage="Make Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtMake" runat="server" Text='<%# Bind("Make") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredMake" runat="server" ControlToValidate="txtMake"
                                    ErrorMessage="Make Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblMake" runat="server" Text='<%# Bind("Make") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Model" SortExpression="Model">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtModel" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredModel" runat="server" ControlToValidate="txtModel"
                                    ErrorMessage="Model Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtModel" runat="server" Text='<%# Bind("Model") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredModel" runat="server" ControlToValidate="txtModel"
                                    ErrorMessage="Model Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblModel" runat="server" Text='<%# Bind("Model") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EngineSize" SortExpression="EngineSize">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEngineSize" runat="server" Text='<%# Bind("EngineSize") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEngineSize" runat="server" ControlToValidate="txtEngineSize"
                                    ErrorMessage="Engine Size Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtEngineSize" runat="server" Text='<%# Bind("EngineSize") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredEngineSize" runat="server" ControlToValidate="txtEngineSize"
                                    ErrorMessage="Engine Size Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblEngineSize" runat="server" Text='<%# Bind("EngineSize") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FuelType" SortExpression="FuelType">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtFuelType" runat="server" Text='<%# Bind("FuelType") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFuelType" runat="server" ControlToValidate="txtFuelType"
                                    ErrorMessage="Fuel Type Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtFuelType" runat="server" Text='<%# Bind("FuelType") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFuelType" runat="server" ControlToValidate="txtFuelType"
                                    ErrorMessage="Fuel Type Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblFuelType" runat="server" Text='<%# Bind("FuelType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Color" SortExpression="Color">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtColor" runat="server" Text='<%# Bind("Color") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredColor" runat="server" ControlToValidate="txtColor"
                                    ErrorMessage="Color Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtColor" runat="server" Text='<%# Bind("Color") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredColor" runat="server" ControlToValidate="txtColor"
                                    ErrorMessage="Color Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblColor" runat="server" Text='<%# Bind("Color") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BodyType" SortExpression="BodyType">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtBodyType" runat="server" Text='<%# Bind("BodyType") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredBodyType" runat="server" ControlToValidate="txtBodyType"
                                    ErrorMessage="Body Type Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtBodyType" runat="server" Text='<%# Bind("BodyType") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredBodyType" runat="server" ControlToValidate="txtBodyType"
                                    ErrorMessage="Body Type Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblBodyType" runat="server" Text='<%# Bind("BodyType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPrice" runat="server" ControlToValidate="txtPrice"
                                    ErrorMessage="Price Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidatorNumber" runat="server" ControlToValidate="txtPrice"
                                    Display="Dynamic" ErrorMessage="Price Must Be a Number" Operator="DataTypeCheck"
                                    Type="Integer" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPrice" runat="server" ControlToValidate="txtPrice"
                                    ErrorMessage="Price Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidatorAge" runat="server" ControlToValidate="txtPrice"
                                    Display="Dynamic" ErrorMessage="Price Must Be a Number" Operator="DataTypeCheck"
                                    Type="Integer" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ImageOnFile" SortExpression="ImageOnFile">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtImage" runat="server" Text='<%# Bind("ImageOnFile") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredImage" runat="server" ControlToValidate="txtImage"
                                    ErrorMessage="Image Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtImage" runat="server" Text='<%# Bind("ImageOnFile") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredImage" runat="server" ControlToValidate="txtImage"
                                    ErrorMessage="Image Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblImageOnFile" runat="server" Text='<%# Bind("ImageOnFile") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" ControlStyle-CssClass="boldTextSmall buttonSmall"
                            ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
