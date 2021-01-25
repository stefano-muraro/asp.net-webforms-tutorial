<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatabaseConnection.aspx.cs" Inherits="MyWebApplication.DataBaseConnection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Database Connection Example</h1>
    <hr />
    <h4>
        <asp:Literal ID="ltConnectionMessage" runat="server" />
    </h4>
    <div>
        <ul>
            <asp:Literal ID="ltOutput" runat="server" />
        </ul>
    </div>
</asp:Content>
