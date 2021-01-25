<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectCalculation.aspx.cs" Inherits="MyWebApplication.ProjectCalculation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Get a Quote For Your Custom Project</h1>
    <p>Base Price: <asp:Literal ID="ltBasePrice" runat="server" /></p>
    <div>
        <label>Your State</label>
        <asp:DropDownList ID="ddlStates" runat="server" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged" AutoPostBack="true"/>
    </div>
    <div class="jumbotron">
        <h3>Your Custom Price: <asp:Literal ID="ltCustomPrice" runat="server" /></h3>
    </div>
</asp:Content>
