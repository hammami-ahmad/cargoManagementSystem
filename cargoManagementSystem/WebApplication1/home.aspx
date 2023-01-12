<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Home Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="/css/styles.css"/>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
    <div class="navbar">
        <a href="/home.aspx"><img src="media/logo.png" alt="logo"/></a>
        <div class="links">
                <span><a href="track.aspx">Track Shipment</a></span>
                <span><a href="calculate.aspx">Calculate price</a></span>
                <span class="btn"><a href="Login.aspx">Login</a></span>
        </div>    
    </div>
        <div class="header">
        <div class="header-text">
            <h2>The Safest & </br>fastest choice</h2>
            <P>It is a long established fact that a reader will be distracted 
               by the readable content of a page when looking at its layout.</P>
        </div>
        <div class="header-img">
            <img src="media/5227.jpg" alt="delivery"/>
        </div>
    </div>
</div>
    <svg class="separator" xmlns="http://www.w3.org/2000/svg" width="100%" height="90" viewBox="0.1 0.3 200 19" preserveAspectRatio="none">
        <g transform="translate(-0.21755166,-100.15454)">
            <path d="M 0.2688579,100.29477 H 200.98548 c 0,0 -99.37375,39.84098 -200.7166221,0 z"></path>
        </g>
    </svg>
    <div class="who-we-are">
       <div class="container">
        <h2 class="title">Who we are</h2>
            <P>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                 It was popularised in the 1960s with the release of Letraset sheets  </P>
    </div>
</div>
<div class="container features-section">
    <h2 class="title">Why us</h2>
    <div class="features">
  <div class="box">
    <img src="media/fast-delivery.png" alt="fast"/>
    <p>Fast</p>
  </div>
  <div class="box">
    <img src="media/safe.png" alt="safe"/>
    <p>Safe</p>
  </div>
  <div class="box">
    <img src="media/best-price.png" alt="best price"/>
    <p>Best Prices</p>
  </div>
</div>
</div>
<div class="calculater">
    <div class="container">
     <h2 class="title">Price Calculator</h2>
         <P>You can get an estimation of the price by providing the information of the shipment</P>
        <span class="btn"><a href="calculate.aspx">Calculate</a></span>     
    </div>
</div>
<div class="container footer">
    <p>© All rights reserved </p>
</div>
    </form>
</body>
</html>