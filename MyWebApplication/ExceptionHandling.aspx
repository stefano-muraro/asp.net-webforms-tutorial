<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExceptionHandling.aspx.cs" Inherits="MyWebApplication.ExceptionHandling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Exception Handling Example</h1>
    <h2>By using a try-catch block</h2>
    <asp:Label ID="lblMessage" runat="server" Visible="false"/>
    <div>
        <label>This should be a decimal: </label>
        <asp:TextBox runat="server" ID="txtDecimal"/>
    </div>
    <div>
        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click"/>
    </div>
    <hr />
    <h2>By redirecting to an error page</h2>
    <asp:Label ID="lblMessage1" runat="server" Visible="false"/>
    <div>
        <label>This should be a decimal: </label>
        <asp:TextBox runat="server" ID="txtDecimal1"/>
    </div>
    <div>
        <asp:Button ID="btnSubmit1" Text="Submit" runat="server" OnClick="btnSubmit1_Click"/>
    </div>
</asp:Content>
