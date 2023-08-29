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
    public partial class ManageShoe : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient obj = new ServiceReference1.WebServiceSoapClient();
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3EB137H;Initial Catalog=DD;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.searchShoeName(TextBox1.Text);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE Shoe SET Name = @Name,Price = @Price,Description = @Description,Stock=@Stock WHERE Name=@ID", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Description", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Stock", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ID", TextBox1.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("ManageShoe.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            obj.deleteShoe(TextBox1.Text);
            Response.Redirect("ManageShoe.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}