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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection sqlCon = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlCon = new SqlConnection("Data Source=DESKTOP-3EB137H;Initial Catalog=DD;Integrated Security=True");
            try
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE username='" + Txtemail.Text + "' AND password='" + Txtpassword.Text + "'", sqlCon);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    string role = Txtemail.Text; // Get the role of the admin from the database
                    Response.Write("Role: " + role); // Add this line for debugging purposes
                    if (role == "Admin")
                    {
                        Response.Redirect("Menu.aspx");
                    }
                    else
                    {
                        Response.Redirect("MainMenu.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please Recheck Username & Password')</script>");
                    Txtemail.Text = "";
                    Txtpassword.Text = "";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

    }
}