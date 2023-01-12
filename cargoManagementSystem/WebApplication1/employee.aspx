<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Control Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="/css/styles.css"/>
</head>
<body>
   
    <form id="form1" runat="server">
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
                    <li id="link4" runat="server"><a href="updateshipments.aspx">update shipment status</a></li>
                    <li id="link5" runat="server"><a href="updateprofile.aspx">update profile</a></li>
                    <li class="login"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="Logout_Click">Log out</asp:LinkButton></li>
                </ul>
        </div>
             <div class="admin-box">
                 <img src="/media/admin.png" />
                 <p>Hey <asp:Label ID="Label1" runat="server"></asp:Label></p>
             </div>
        </div>
    </form>
</body>
</html>
                    
