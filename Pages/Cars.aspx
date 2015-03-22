<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cars.aspx.cs" Inherits="Cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:SqlDataSource ID="dsCars" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
        SelectCommand="SELECT [Color] FROM [Cars] ORDER BY [Color]">
    </asp:SqlDataSource>
    <asp:Label ID="lblDropdownCars" runat="server" Text="Select an Item:"></asp:Label>
    <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack="True" 
        DataSourceID="dsCars" DataTextField="Color" DataValueField="Color">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dsCarsListed" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarZoneDBInternet %>" 
        SelectCommand="SELECT [CarId], [Make], [Model], [EngineSize], [FuelType], [Color], [BodyType], [Price], [ImageOnFile] FROM [Cars] WHERE ([Color] = @Color)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlColor" Name="Color" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="dlCars" runat="server" CellPadding="4"
        DataKeyField="CarId" DataSourceID="dsCarsListed" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="style3">
                <tr>
                    <td>
                        CarId</td>
                    <td>
                        Make</td>
                    <td>
                        Model</td>
                    <td>
                        EngineSize</td>
                    <td>
                        FuelType</td>
                    <td>
                        Color</td>
                    <td>
                        BodyType</td>
                    <td>
                        Price</td>
                    <td>
                        ImageOnFile</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table class="style3" border="1">
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
                        <asp:Label ID="EngineSizeLabel" runat="server" 
                            Text='<%# Eval("EngineSize") %>' />
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
                        <asp:Label ID="ImageOnFileLabel" runat="server" 
                            Text='<%# Eval("ImageOnFile") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

