using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DD_Footwear
{
    public partial class Order : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient obj = new ServiceReference1.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = obj.addOrder(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
            int record = Int32.Parse(value);
            if (record > 1)
            {
                Response.Write("<script>alert('Order Added Failed!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Order Added Successfully!')</script>");
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                Response.Redirect("Order.aspx");

            }
        }
    }
}