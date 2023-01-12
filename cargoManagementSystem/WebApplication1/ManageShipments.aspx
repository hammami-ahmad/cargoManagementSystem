<%@ Page Language="C#"  MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="ManageShipments.aspx.cs" Inherits="WebApplication1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/css/styles.css" />
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
                    <li id="link2" runat="server"  class="selected"><a href="ManageShipments.aspx">manage shipments</a></li>
                    <li id="link4" runat="server"><a href="updateshipments.aspx">update shipment status</a></li>
                    <li id="link5" runat="server"><a href="updateprofile.aspx">update profile</a></li>
                    <li class="login"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="Logout_Click">Log out</asp:LinkButton></li>
                </ul>
        </div>
         <div class="table">
            <asp:GridView  runat="server" ID="datagrid"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="datagrid_SelectedIndexChanged" CssClass="mydatagrid" PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
                <SelectedRowStyle CssClass="selectedRowStyle" />
                  <Columns >  
                      <asp:BoundField HeaderText ="Id"  DataField ="id" /> 
                      <asp:BoundField HeaderText ="Sender Fname"  DataField ="SenderFirstName" /> 
                      <asp:BoundField HeaderText ="Sender City"  DataField ="SenderCity" />  
                      <asp:BoundField HeaderText ="Reciever Fname" DataField ="RecieverFirstName" />  
                      <asp:BoundField HeaderText ="Reciever City" DataField ="RecieverCity" />     
                      <asp:BoundField HeaderText ="Price" DataField ="Price" /> 
                  </Columns>  
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"  ConnectionString="<%$ ConnectionStrings:cargoManagementSystem %>" SelectCommand="SELECT * FROM Shipment " ></asp:SqlDataSource>
        </div>
              <div class="form-card back">
                  <div class="content">
                      <div class="messages">
                        <asp:Label ID="msg" runat="server" Text="Error"></asp:Label>
                        <asp:Label ID="msg3" runat="server" Text="Shipment has been added successfully"></asp:Label>
                        <asp:Label ID="msg4" runat="server" Text="Shipment has been deleted successfully"></asp:Label>
                    </div>
                    <div class="inputd">
                      <p>Shipment Type</p>
                        <div>
                         <asp:DropDownList ID="ShipmentType" runat="server" CssClass="ddl">
                              <asp:ListItem Value="normal">Normal</asp:ListItem>
                              <asp:ListItem Value="air">by air</asp:ListItem>
                         </asp:DropDownList>
                    </div>
                    </div>
                      
                    <div class="inputd">
                    <p>Package width in CM</p>
                        <div>
                             <asp:TextBox ID="Xd" runat="server" OnTextChanged="Calculate_Price" AutoPostBack="true" ></asp:TextBox>
                        </div>
                    </div>
                    <div class="inputd">
                    <p>Package height in CM</p>
                        <div>
                             <asp:TextBox ID="Yd" runat="server" OnTextChanged="Calculate_Price" AutoPostBack="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inputd">
                    <p>Package depth in CM</p>
                        <div>
                             <asp:TextBox ID="Zd" runat="server" OnTextChanged="Calculate_Price" AutoPostBack="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="inputd">
                         <p>Package weight in grams</p>
                        <div>
                              <asp:TextBox ID="weight" runat="server" OnTextChanged="Calculate_Price" AutoPostBack="true"></asp:TextBox>
                        </div>

                    </div>                   
             
                            <div class="inputd">
                       <p>Sender's City</p>
                                <div>
                                <asp:DropDownList ID="SCity" runat="server" CssClass="ddl"></asp:DropDownList>
                            </div>
                                </div>
                            <div class="inputd">
                       <p>Sender's First Name </p>
                                <div>
                                 <asp:TextBox ID="SFname" runat="server" CssClass="input" ></asp:TextBox> 
                            </div>
                            </div>
                            <div class="inputd">
                       <p>Last Name</p>
                                <div>
                                 <asp:TextBox ID="SLname" runat="server" CssClass="input" ></asp:TextBox> 
                            </div>
                                </div>
                            <div class="inputd">
                            <p>Reciever's City</p>
                                <div>
                                <asp:DropDownList ID="RCity" runat="server" CssClass="ddl"></asp:DropDownList>
                            </div>
                                </div>
                            <div class="inputd">
                            <p>Reciever's First Name </p>
                                <div>
                                 <asp:TextBox ID="RFname" runat="server" CssClass="input" ></asp:TextBox> 
                            </div>
                                </div>
                            <div class="inputd">
                            <p>Reciever's Last Name</p>
                                <div>
                                 <asp:TextBox ID="RLname" runat="server" CssClass="input" ></asp:TextBox> 
                            </div>
                                </div>
                       <asp:Label ID="price" runat="server" CssClass="link" >Price : 0.00 ₺</asp:Label>
                <asp:LinkButton ID="AddNewbtn" runat="server" class="add-instead"  OnClick="ADD_Click"  >Add New shipment instead ?</asp:LinkButton>
                <asp:LinkButton ID="ManageExisting" runat="server" class="manage-instead" OnClick="Manage_Click"  >Manage existing shipment instead ?</asp:LinkButton>
                  <div class="price-btn">
                    <asp:Button ID="Update" Text="Update" runat="server"  OnClick="Update_Click" class="btn" />
                    <asp:Button ID="Delete" Text="Delete" runat="server"  OnClick="Delete_Click" class="btn" />
                    <asp:Button ID="AddNew" Text="Add" runat="server"  OnClick="AddNew_Click" class="btn" />
                </div>
                        </div>
                      
        </div>
        </div>
        </div>
    </form>
</body>
</html>
