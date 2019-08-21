<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MarinaLakeLab2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <img src="Images/inlandmarina_banner.jpg" />
        <h1></h1>
        <p class="lead">Welcome to Inland Marina Home Page</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>A Boaters Paradise</h2>
            <p>
                We pride our selves as a top notch agency committed to giving tourists exciting boat cruise on the Inland lake.
                One of the largest lakes in the southern US. 
                With about 90 exotic boats ready for your use, Our promotional offers promise as high as a year round boating paradise.
            </p>
            <!--test-->
            <p>
                <a class="btn btn-default" href="Registration.aspx">Register Here &raquo;</a>
            </p>
        </div>  
        <div>
            
            <table style="width: 19%; height: 150px; float:right; background-color:rgba(255, 255, 255, 0.70); padding-top:10%">
                <tr>
                    <td style="height: 69px; width: 70px;">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td style="height: 69px">
                        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 70px; height: 31px">
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td style="height: 31px">
                        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 70px">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
            </table>


        </div>
    </div>

</asp:Content>
