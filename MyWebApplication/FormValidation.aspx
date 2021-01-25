<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormValidation.aspx.cs" Inherits="MyWebApplication.FormValidation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Validation Example</h1>
    <div>
        <label>Your Name</label>
        <asp:TextBox ID="txtName" CssClass="asd" runat="server" />
        <asp:RequiredFieldValidator ValidationGroup="valForm" runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="Name is required." />
    </div>
    <div>
        <label>Your Age</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ValidationGroup="valForm" runat="server" ID="rfvAge" ControlToValidate="txtAge" ErrorMessage="Age is required." Display="Dynamic" />
        <asp:RangeValidator ValidationGroup="valForm" ID="rvAge" ControlToValidate="txtAge" runat="server" type="Integer" MinimumValue="4" MaximumValue="120" ErrorMessage="Enter your real age." CssClass="bg-error" Display="Dynamic" />
    </div>
    <div>
        <label>Your Email</label>
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RegularExpressionValidator ValidationGroup="valForm" runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="Please, enter a valid email address." ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" Display="Dynamic"/>
        <asp:RequiredFieldValidator ValidationGroup="valForm" runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Email is required." Display="Dynamic"/>
    </div>
    <div>
        <label>Your Fav Color</label>
        <asp:DropDownList runat="server" ID="ddlColor">
            <asp:ListItem Text="Please, choose a color" Value=""/>
            <asp:ListItem Text="Blue" Value="blue"/>
            <asp:ListItem Text="Red" Value="red"/>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ValidationGroup="valForm" runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="Select a color." />
    </div>
    <div>
        <asp:Button Text="Submit Info" runat="server" ID="btnSubmit" Onclick="btnSubmit_Click" ValidationGroup="valForm"/>
    </div>
    <div class="message">
        <asp:Literal ID="ltMessage" runat="server" />
        <asp:ValidationSummary ID="valSummaryForm" runat="server" ValidationGroup="valForm" DisplayMode="BulletList" HeaderText="Please fix the following errors:" Visible="false" />
    </div>
</asp:Content>
