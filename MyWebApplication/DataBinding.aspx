<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataBinding.aspx.cs" Inherits="MyWebApplication.DataBinding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Data Binding</h1>
    <h4>
        <asp:Literal ID="ltError" runat="server" />
    </h4>
    <asp:GridView ID="gvColors" runat="server" AutoGenerateColumns="false" OnRowDeleting="gvColors_RowDeleting" OnRowCancelingEdit="gvColors_RowCancelingEdit" OnRowEditing="gvColors_RowEditing" OnRowUpdating="gvColors_RowUpdating">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HiddenField ID="hdnColorId" runat="server" Value='<%# DataBinder.Eval(Container.DataItem, "Id") %>' />
                </ItemTemplate>  
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="Name"/>
            <asp:BoundField DataField="HexCode" HeaderText="Hex Code"/>
            <asp:TemplateField HeaderText="Color Swatch">
                <ItemTemplate>
                    <div style="<%# "height:20px; background-color:#" + Eval("HexCode") + ";" %>"></div>
                </ItemTemplate>    
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="true"/>
            <asp:CommandField ShowDeleteButton="true"/>
        </Columns>
    </asp:GridView>
    <div>
        <asp:Button Text="Add New Row" ID="btnAddRow" runat="server" OnClick="btnAddRow_Click"/>
    </div>
</asp:Content>
