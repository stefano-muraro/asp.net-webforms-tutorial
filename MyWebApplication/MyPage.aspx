<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="MyWebApplication.MyPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Advanced ASP.NET Web Server Controls</h2>
    <h3>Create a list of events in a repeater from a calendar control</h3>
    <div>
        <label>Event Name:</label>
        <asp:TextBox ID="txtEvent" runat="server" />
    </div>
    <div>
        <label>Event Date:</label>
        <asp:Calendar ID="calendarEvents" runat="server" />
    </div>
    <div>
        <asp:Button Text="Add Event" runat="server" ID="btnEvent" OnClick="btnEvent_Click"/>
    </div>
    <h3>Events Repeater</h3>
    <div>
        <asp:Repeater ID="rptEvents" runat="server">
            <ItemTemplate>
                <h3><%# DataBinder.Eval(Container.DataItem, "EventDate") %><small> <%# DataBinder.Eval(Container.DataItem, "EventName") %></small></h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
