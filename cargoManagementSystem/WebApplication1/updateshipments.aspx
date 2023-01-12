<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateshipments.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/styles.css" />
    <link rel="stylesheet" href="/css/loginstyles.css" />
</head>
<body>
    <form id="form1" runat="server" >
        <div class="flex-container">
        <div class="nav">
            <div>
                <img src="/media/user.png" />
                <a href="updateprofile.aspx">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </a>
             </div>
                <ul>
                    <li id="link1" runat="server"><a href="manageemployees.aspx">manage employees</a></li>
                    <li id="link2" runat="server"><a href="ManageShipments.aspx">manage shipments</a></li>
                    <li id="link4" runat="server"  class="selected"><a href="updateshipments.aspx">update shipment status</a></li>
                    <li id="link5" runat="server"><a href="updateprofile.aspx">update profile</a></li>
                    <li class="login"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="Logout_Click">Log out</asp:LinkButton></li>
                </ul>
        </div>
        <div class="form-card update">
        <div class="content">
            <p> enter an id to search for </p>
            <div>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="price-btn">
                <asp:Button ID="searchfor" Text="Search" runat="server"  OnClick="searchfor_Click"  class="btn" />
            </div>
                 <p id="bige" runat="server">Not found!!</p>
        <div class="typebtn">
            <asp:Button ID="returnit" Text="Canceled" runat="server"  OnClick="returnit_Click"  class="btn" />
            <asp:Button ID="teslim" Text="Recieved" runat="server"  OnClick="teslim_Click"  class="btn" />
            <asp:Button ID="yolda" Text="Sent" runat="server"  OnClick="yolda_Click"  class="btn" />
        </div>
        </div>
        </div>
        </div>

    </form>
</body>
</html>
