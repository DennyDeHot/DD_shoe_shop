using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DD_Footwear
{
    public partial class Check : System.Web.UI.Page
    {
        ServiceReference1.WebServiceSoapClient obj = new ServiceReference1.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = obj.searchShoeName(TextBox1.Text);
            GridView1.DataBind();
        }
    }
}