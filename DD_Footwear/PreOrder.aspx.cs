using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DD_Footwear
{
    public partial class PreOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3EB137H;Initial Catalog=DD;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            
                SqlCommand cmd = new SqlCommand("INSERT INTO PreOrders VALUES (@Name,@Price,@Description,@Stock)", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Price", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Description", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Stock", TextBox4.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            Response.Redirect("Menu.aspx");



        }
    }
}