<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">  
    <title>Login Page</title>
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
                    <asp:Label ID="msg" runat="server" Text="Wrong username or password"></asp:Label>
                     <asp:TextBox ID="username" runat="server" CssClass="input" placeholder="Username" ></asp:TextBox> 
                    <asp:TextBox ID="password" runat="server" CssClass="input" TextMode="Password" placeholder="Password" ></asp:TextBox> 
                  <asp:Button ID="Button1" Text="Login" runat="server" OnClick="login_Click" class="btn"/>
        </div>
             </div>
     </form>
</body>
</html>
