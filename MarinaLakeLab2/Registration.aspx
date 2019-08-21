<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MarinaLakeLab2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="formCollection">
    <table style="width: 35%">
        <tr>
            <td>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUserName" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbPasswordConfirmation" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
        </tr>
    </table>
   </div> 
</asp:Content>
