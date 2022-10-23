using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace SelfOrderManagementSystem
{
    public partial class OrderMenuMaster : System.Web.UI.MasterPage
    {
        string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        int userID,id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("select distinct CategoryName from Category where UserID = " + Session["UserID"].ToString(), con);
            SqlDataAdapter db = new SqlDataAdapter("select * from Category where UserID = " + Session["UserID"].ToString(), con);
            DataSet ds = new DataSet();
            DataSet dt = new DataSet();
            db.Fill(dt);
            da.Fill(ds);
            repeater.DataSource = ds;
            repeater.DataBind();
            itemRepeater.DataSource = dt;
            itemRepeater.DataBind();

        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "CategoryClick":
                    var button = e.Item.FindControl("CategoryButton") as Button;
                    SqlConnection con = new SqlConnection(CS);
                    SqlDataAdapter da = new SqlDataAdapter("select * from Category where CategoryName = " + "\'" + button.Text.ToString() + "\'" + " and UserID = " + Session["UserID"].ToString() , con);

                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    itemRepeater.DataSource = ds;
                    itemRepeater.DataBind();
                    break;

                // Other commands here.

                default:
                    break;
            }
        }

        private DataTable getData(string query)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(query,con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            return dt;

        }

        protected void itemRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "OrderClick":
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    userID = Convert.ToInt32(Session["UserID"]);
                    DataTable dtOrder = getData("select * from MealOrder where UserID = " + userID + " and OrderID = 1");

                    if(dtOrder.Rows.Count > 0)
                    {
                        DataRow dr = dtOrder.Rows[0];
                        DataTable dtOrderItem = getData("select * from OrderItem where ItemMealOrderID = " + Convert.ToInt32(dr["MealOrderID"].ToString()) + " and " + "ItemMealID" + "");
                        if(dtOrderItem.Rows.Count > 0)
                        {
                            insertData("Update OrderItem set quantity = quantity + 1 where ItemMealID = " + id + " and ItemMealOrderID = " + Convert.ToInt32(dr["MealOrderID"].ToString()));
                        }
                        else
                        {
                            addOrderItem(dr["MealOrderID"].ToString(), dr["userID"].ToString());
                        }
                    }
                    
                    else if (dtOrder.Rows.Count == 0)
                    {
                        insertData("insert into MealOrder (userID, OrderID) values (" + userID + ", 1)");

                        DataTable newOrder = getData("select * from MealOrder where UserID = " + userID + " and OrderID = 1");
                        DataRow newOrderRow = newOrder.Rows[0];

                        addOrderItem(newOrderRow["MealOrderID"].ToString(), newOrderRow["userID"].ToString());
                    }
                   
                    break;
                default:
                    break;
            }
        }
        private void addOrderItem(string orderID, string userID)
        {
            string query = "insert into OrderItem (ItemMealID, ItemMealOrderID, quantity) values (" + id + "," + orderID + "," + 1 + ")";

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        
        private void insertData(string query)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand(query,con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void checkoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckoutPage.aspx");
        }

        protected void cancelOrderButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StartOrderDisplay.aspx");
        }
    }
}