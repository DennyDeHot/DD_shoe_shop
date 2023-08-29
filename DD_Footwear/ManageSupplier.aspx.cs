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
    public partial class ManageSupplier : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient obj = new ServiceReference1.WebServiceSoapClient();
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3EB137H;Initial Catalog=DD;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.searchSupp(TextBox1.Text);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE Supplier SET Name = @Name,Address = @Address,Mobile = @Mobile WHERE Name=@ID", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Mobile", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ID", TextBox1.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("ManageSupplier.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM Supplier WHERE Name=@ID", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ID", TextBox1.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}