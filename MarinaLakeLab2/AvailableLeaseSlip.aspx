<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AvailableLeaseSlip.aspx.cs" Inherits="MarinaLakeLab2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="AvailableHeading" style="background-color:rgba(250, 249, 249, 0.90)">
    <h1 style="width: 686px ">Available Slips</h1>
    </div>
    <br />
    <div class="slipleasegv" style="margin-top:24px; width: 695px;">    
        <asp:GridView ID="gvAvailableLeaseSlip" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvAvailableLeaseSlip_SelectedIndexChanged" Width="655px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MarinaConnectionString %>" SelectCommand="with x as (select SlipID  from lease)
select distinct  s.ID,s.Length ,s.Width, d.Name   from Dock d, Slip s ,x t where t.SlipID!=s.ID and s.DockID= d.ID     
"></asp:SqlDataSource>
        <asp:Button ID="btnShowSlips" runat="server" OnClick="btnShowSlips_Click" Text="Show My Slips" />
        <br />
        </div>
        
</asp:Content>
