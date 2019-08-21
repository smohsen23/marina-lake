<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaseSlip.aspx.cs" Inherits="MarinaLakeLab2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="slipleasegv">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SlipID" HeaderText="SlipID" SortExpression="SlipID" />
        </Columns>
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost\SQLEXPRESS;Initial Catalog=Marina;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [SlipID] FROM [Lease] WHERE ([CustomerID] = @CustomerID)">
        <SelectParameters>
            <asp:SessionParameter Name="CustomerID" SessionField="CustomerID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
