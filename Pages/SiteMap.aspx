<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="SiteMap.aspx.cs" Inherits="Pages_SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h1 style="color: #3366CC;">
        Site Map</h1>
    <p class="boldTextMedium">
        Review the pages of the website</p>
    <asp:SiteMapDataSource ID="dsSiteMap" runat="server" />
    <asp:TreeView ID="Menu1" runat="server" DataSourceID="dsSiteMap" StaticDisplayLevels="5">
    </asp:TreeView>
</asp:Content>
