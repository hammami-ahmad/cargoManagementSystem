<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="track.aspx.cs" Inherits="WebApplication1.WebForm8" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Track your shipment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <div class="navbar">
        <a  href="/home.aspx"><img src="media/logo.png" alt="logo"/></a>
        <div class="links">
                <span><a href="track.aspx">Track Shipment</a></span>
                <span><a href="calculate.aspx">Calculate price</a></span>
                <span class="btn"><a href="Login.aspx">Login</a></span>
        </div>    
    </div>

        
        <div class="form-card centered-card">
                <p>Enter the id of the shipment you want to track:</p>
                <asp:TextBox ID="id" runat="server" ></asp:TextBox>
                <asp:Button ID="search" runat="server" Text="Track" OnClick="search_Click" class="btn" />
           <div id="getinf" runat="server">
                <asp:Label ID="details" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Sname" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Scity" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Rname" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Rcity" runat="server" Text="Label"></asp:Label>
        </div>    
        </div>
          
            </div>

    </form>
</body>
</html>
