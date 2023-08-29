using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace DD_Footwear
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

        SqlConnection sqlCon = null;
        public SqlConnection getConnection()
        {
            try
            {
                sqlCon = new SqlConnection("Data Source=DESKTOP-3EB137H;Initial Catalog=DD;Integrated Security=True");
                sqlCon.Open();  
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error  Connecting  to Database " + ex);
            }
            return sqlCon;
        }


        [WebMethod]
        public string autoIncrementShoeID()
        {
            string roomId = null;

            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select ID from Shoe", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                string id = "";
                bool records = dr.HasRows;
                if (records)
                    while (dr.Read())
                    {
                        id = dr[0].ToString();
                    }
                string idString = id.Substring(1);
                int CTR = Int32.Parse(idString);
                if (CTR >= 1 && CTR < 9)
                {
                    CTR = CTR + 1;
                    roomId = "S00" + CTR;
                }
                else if (CTR >= 10 && CTR < 99)
                {
                    CTR = CTR + 1;
                    roomId = "S0" + CTR;
                }
                else if (CTR > 99)
                {
                    CTR = CTR + 1;
                    roomId = "S" + CTR;
                }
                else
                {
                    roomId = "S001";
                }
                dr.Close();
            }
            catch (Exception e1)
            {
                roomId = e1.ToString();
            }
            return roomId;
        }

        [WebMethod]
        public string addShoe(String id, String name, string price, string description, string stock)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Shoe values ('" + id + "','" + name + "','" + price + "','"
                    + description + "','" + stock + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public bool updateShoe(string id, string name, string price, string description, string stock)
        {
            bool records = false;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("update Shoe set ID= '" + id + "' , Name= '" + name + "' , Price= '" +
                    price + "' ,  Description= '" + description + "',  Stock= '" + stock + "'   where Name='" + name + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();
                records = dr.HasRows;
                dr.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Update Stock" + ex);
            }
            return records;
        }

        [WebMethod]
        public DataSet deleteShoe(string name)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("DELETE FROM Shoe WHERE name='" + name + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }


        [WebMethod]
        public DataSet searchShoeName(string name)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from Shoe where Name='" + name + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }


        [WebMethod]
        public string addOrder(string name, string sname, string mobile, string qtn, string address)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into Orders values ('" + name + "','" + sname + "','"
                    + mobile + "','" + qtn + "','" + address + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }


        [WebMethod]
        public string addPreOrder(string name, string sname, string mobile, string qtn, string address)
        {
            int temp = 0;
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("insert into PreOrders values ('" + name + "','" + sname + "','"
                    + mobile + "','" + qtn + "','" + address + "')", sqlCon);
                temp = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
            return temp.ToString();
        }



        [WebMethod]
        public DataSet searchSupp(string name)
        {
            DataSet ds = new DataSet();
            try
            {
                getConnection();
                SqlCommand cmd = new SqlCommand("Select * from Supplier where Name='" + name + "'", sqlCon);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "Stock");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Stock" + ex);
            }
            return ds;
        }




    }
}
