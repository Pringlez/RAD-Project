<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Cars.aspx.cs" Inherits="Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:SqlDataSource ID="dsCars" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT DISTINCT [Color] FROM [Cars] ORDER BY [Color]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="lblDropdownCars" runat="server" Text="Select a Color: "></asp:Label>
    <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack="True" DataSourceID="dsCars"
        DataTextField="Color" DataValueField="Color">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="dsCarsListed" runat="server" ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>"
        SelectCommand="SELECT [CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile] FROM [Cars] WHERE ([Color] = @Color)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlColor" Name="Color" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="dlCars" runat="server" CellPadding="4" DataKeyField="CarId" DataSourceID="dsCarsListed"
        ForeColor="#333333" Width="1000px">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
            Width="150%" />
        <HeaderTemplate>
            <table class="carsTableHeader">
                <tr>
                    <td>
                        CarId
                    </td>
                    <td>
                        Make
                    </td>
                    <td>
                        Model
                    </td>
                    <td>
                        EngineSize
                    </td>
                    <td>
                        FuelType
                    </td>
                    <td>
                        Color
                    </td>
                    <td>
                        BodyType
                    </td>
                    <td>
                        Price
                    </td>
                    <td>
                        ImageOnFile
                    </td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="carsTable">
                <tr>
                    <td width="50">
                        <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EngineSizeLabel" runat="server" Text='<%# Eval("EngineSize") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FuelTypeLabel" runat="server" Text='<%# Eval("FuelType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BodyTypeLabel" runat="server" Text='<%# Eval("BodyType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageOnFileLabel" runat="server" Text='<%# Eval("ImageOnFile") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
