using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfOrderManagementSystem
{
    public partial class Home : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("StartHome.aspx");
            }
            else
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand command = new SqlCommand("AddCategory", con);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@userID", Session["UserID"].ToString());
                    command.Parameters.AddWithValue("@categoryname", categoryText.Text);
                    command.Parameters.AddWithValue("@itemname", nameText.Text);
                    command.Parameters.AddWithValue("@itemdescription", descriptionText.Text);
                    command.Parameters.AddWithValue("@itemprice", priceText.Text);

                    con.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("StartHome.aspx");
            }
            else
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand command = new SqlCommand("DeleteCategory", con);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@userID", Session["UserID"].ToString());
                    command.Parameters.AddWithValue("@categoryname", categoryText.Text);
                    command.Parameters.AddWithValue("@itemname", nameText.Text);
                    command.Parameters.AddWithValue("@itemdescription", descriptionText.Text);
                    command.Parameters.AddWithValue("@itemprice", priceText.Text);

                    con.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void showMenuButton_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("StartHome.aspx");
            }
            else
            {
                Response.Redirect("Menu.aspx");//TODO: redirect to start order
            }
        }
    }
}