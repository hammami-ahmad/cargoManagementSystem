<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculate.aspx.cs" Inherits="WebApplication1.calculate" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Calculate Prices</title>
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
        <div class="form-card">
            <p>The purpose of this page is to give an approximate price </p>
            <div class="inputd">
                <p>Select a Shipping type:</p>
                <div>
                <asp:DropDownList ID="Type" runat="server" CssClass="drpdown"></asp:DropDownList>
            </div>
                </div>
            <div class="inputd">
                <p>From:</p>
                <div>
                <asp:DropDownList ID="Sender" runat="server" CssClass="drpdown"></asp:DropDownList>
            </div>
            </div>
            <div class="inputd">
                <p>to:</p>
                <div>
                <asp:DropDownList ID="Reciever" runat="server" CssClass="drpdown"></asp:DropDownList>
            </div>            
            </div>            
                <div class="inputd">
                <p>Enter the Package's width in cm:</p>
                <div>
                    <asp:TextBox ID="x" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="inputd">            
                <p>Enter the Package's height in cm:</p>
                <div>
                <asp:TextBox ID="y" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="inputd">
                <p>Enter the Package's depth in cm:</p>
                <div>
                <asp:TextBox ID="z" runat="server" ></asp:TextBox>
            </div>
            </div>                  
            <div class="inputd">
                <p>Enter the Package's weight in grams:</p>
                <div>
                <asp:TextBox ID="w" runat="server"></asp:TextBox>
            </div>  
            </div>  
            <div class="price-btn">
                <asp:Button ID="calc" runat="server" Text="Calculate" OnClick="calc_Click" BorderWidth="1px" class="btn" />
                <p id="price" runat="server">Price</p>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
