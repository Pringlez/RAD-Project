<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="PartsOverview.aspx.cs" Inherits="Pages_PartsOverview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Parts Overview Page</h1>
    <asp:SqlDataSource ID="dsPartsOverview" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [PartId], [PartName], [Quantity], [Manufacturer] FROM [Parts] ORDER BY [PartId]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPartsOverview2" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" DeleteCommand="DELETE FROM [Parts] WHERE [PartId] = @original_PartId AND [PartName] = @original_PartName AND (([PartDescription] = @original_PartDescription) OR ([PartDescription] IS NULL AND @original_PartDescription IS NULL)) AND [Manufacturer] = @original_Manufacturer AND [Price] = @original_Price AND [SerialNumber] = @original_SerialNumber AND [Quantity] = @original_Quantity AND (([ImageOnFile] = @original_ImageOnFile) OR ([ImageOnFile] IS NULL AND @original_ImageOnFile IS NULL))"
        InsertCommand="INSERT INTO [Parts] ([PartName], [PartDescription], [Manufacturer], [Price], [SerialNumber], [Quantity], [ImageOnFile]) VALUES (@PartName, @PartDescription, @Manufacturer, @Price, @SerialNumber, @Quantity, @ImageOnFile)"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Parts] WHERE ([PartId] = @PartId)"
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
            <asp:ControlParameter ControlID="gvwParts" Name="PartId" PropertyName="SelectedValue"
                Type="Int32" />
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
    <table>
        <tr>
            <td>
                <asp:GridView ID="gvwParts" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="6" DataKeyNames="PartId" DataSourceID="dsPartsOverview" ForeColor="#333333"
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="PartId" HeaderText="PartId" InsertVisible="False" ReadOnly="True"
                            SortExpression="PartId" />
                        <asp:BoundField DataField="PartName" HeaderText="PartName" SortExpression="PartName" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
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
                <asp:DetailsView ID="dvwParts" runat="server" AutoGenerateRows="False" BackColor="White"
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PartId"
                    DataSourceID="dsPartsOverview2" Width="600px" Height="500px" OnItemDeleted="dvwParts_ItemDeleted"
                    OnItemInserted="dvwParts_ItemInserted" OnItemUpdated="dvwParts_ItemUpdated" ForeColor="Black"
                    GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <EditRowStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:TemplateField HeaderText="PartId" InsertVisible="False" SortExpression="PartId">
                            <EditItemTemplate>
                                <asp:Label ID="lblPartId" runat="server" Text='<%# Eval("PartId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPartId" runat="server" Text='<%# Bind("PartId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PartName" SortExpression="PartName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPartName" runat="server" Text='<%# Bind("PartName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPartName" runat="server" ControlToValidate="txtPartName"
                                    ErrorMessage="Part Name Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPartName" runat="server" Text='<%# Bind("PartName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPartName" runat="server" ControlToValidate="txtPartName"
                                    ErrorMessage="Part Name Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPartName" runat="server" Text='<%# Bind("PartName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PartDescription" SortExpression="PartDescription">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPartDescription" runat="server" Text='<%# Bind("PartDescription") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPartDescription" runat="server" ControlToValidate="txtPartDescription"
                                    ErrorMessage="Part Description Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPartDescription" runat="server" Text='<%# Bind("PartDescription") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPartDescription" runat="server" ControlToValidate="txtPartDescription"
                                    ErrorMessage="Part Description Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPartDescription" runat="server" Text='<%# Bind("PartDescription") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Manufacturer" SortExpression="Manufacturer">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtManufacturer" runat="server" Text='<%# Bind("Manufacturer") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredManufacturer" runat="server" ControlToValidate="txtManufacturer"
                                    ErrorMessage="Manufacturer Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtManufacturer" runat="server" Text='<%# Bind("Manufacturer") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredManufacturer" runat="server" ControlToValidate="txtManufacturer"
                                    ErrorMessage="Manufacturer Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblManufacturer" runat="server" Text='<%# Bind("Manufacturer") %>'></asp:Label>
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
                        <asp:TemplateField HeaderText="SerialNumber" SortExpression="SerialNumber">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtSerialNumber" runat="server" Text='<%# Bind("SerialNumber") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredSerialNumber" runat="server" ControlToValidate="txtSerialNumber"
                                    ErrorMessage="Serial Number Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtSerialNumber" runat="server" Text='<%# Bind("SerialNumber") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredSerialNumber" runat="server" ControlToValidate="txtSerialNumber"
                                    ErrorMessage="Serial Number Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblSerialNumber" runat="server" Text='<%# Bind("SerialNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredQuantity" runat="server" ControlToValidate="txtQuantity"
                                    ErrorMessage="Quantity Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredQuantity" runat="server" ControlToValidate="txtQuantity"
                                    ErrorMessage="Quantity Field Required" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ImageOnFile" SortExpression="ImageOnFile">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtImageOnFile" runat="server" Text='<%# Bind("ImageOnFile") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredImageOnFile" runat="server" ControlToValidate="txtImageOnFile"
                                    ErrorMessage="ImageOnFile Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtImageOnFile" runat="server" Text='<%# Bind("ImageOnFile") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredImageOnFile" runat="server" ControlToValidate="txtImageOnFile"
                                    ErrorMessage="ImageOnFile Field Required" Display="Dynamic" Font-Bold="True"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageOnFile") %>'></asp:Label>
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
