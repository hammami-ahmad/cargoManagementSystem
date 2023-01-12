using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public static int sid =5;
        SqlConnection con1 = new SqlConnection(@"Data Source=DESKTOP-PHJMC0G;Initial Catalog=cargoManagementSystem;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            bige.Visible = false;
            returnit.Visible = false;
            teslim.Visible = false;
            yolda.Visible = false;
            if (Session["Role"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (Session["Role"].Equals("employee"))
            {
                link1.Visible = false;
                link2.Visible = false;
            }
            if (Session["Role"].Equals("manager"))
            {
                link1.Visible = false;
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");

        }

        protected void searchfor_Click(object sender, EventArgs e)
        {
            bige.InnerText = "Shipment not found!";
            bige.Visible = false;   
            string stat ="";
            sid = Convert.ToInt32(TextBox1.Text.Trim()) ;
            try
            {
                con1.Open();
                SqlCommand cmd3 = new SqlCommand("SELECT CurrentStatus from Shipment where Id = '" + TextBox1.Text.Trim() + "'", con1);
                SqlDataReader dr = cmd3.ExecuteReader();
                while (dr.Read())
                {
                   stat = dr.GetValue(0).ToString();
                }
                con1.Close();
                bige.Visible = true;
                if (stat.Equals("Sent"))
                {        
                    returnit.Visible = true;
                    yolda.Visible = true;
                    bige.InnerText = "Current status of shipment " + sid + " is: " + stat ;
                }
                else if(stat.Equals("On the way"))
                {
                    returnit.Visible = true;
                    teslim.Visible = true;
                    bige.InnerText = "Current status of shipment " + sid + " is: " + stat + " ,update it to";
                }
                else if (stat.Equals("Canceled"))
                {
                    bige.InnerText = "Current status of shipment " + sid + " is: " + stat ;
                }
                else if (stat.Equals("Recieved"))
                {
                    bige.InnerText = "Current status of shipment " + sid + " is: " + stat;
                }
               

            }
            catch (Exception ex)
            {
                
            }
            
        }

        protected void returnit_Click(object sender, EventArgs e)
        {
            con1.Open();
            SqlCommand cmd3 = new SqlCommand("UPDATE  Shipment set CurrentStatus='Canceled' where Id = " + sid + "", con1);
            cmd3.ExecuteNonQuery();
            con1.Close();
        }

        protected void teslim_Click(object sender, EventArgs e)
        {
            con1.Open();
            SqlCommand cmd3 = new SqlCommand("UPDATE  Shipment set CurrentStatus='Recieved' where Id = " + sid + "", con1);
            cmd3.ExecuteNonQuery();
            con1.Close();
        }

        protected void yolda_Click(object sender, EventArgs e)
        {
            con1.Open();
            SqlCommand cmd3 = new SqlCommand("UPDATE  Shipment set CurrentStatus='On the way' where Id = "+sid+" ", con1);
            cmd3.ExecuteNonQuery();
            con1.Close();
        }
    }
}