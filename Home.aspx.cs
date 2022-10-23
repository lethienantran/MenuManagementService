using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
            if (Session["UserID"] != null)
            {

                SqlConnection con = new SqlConnection(CS);
                SqlDataAdapter da = new SqlDataAdapter("select * from users where" +
                    " UserID = " + Convert.ToInt32(Session["UserID"].ToString()), con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataRow dr = dt.Rows[0];

                welcomeLabel.Visible = true;
                welcomeLabel.Text = "" + dr["BrandName"];
                messageLabel.Visible = false;
            }
            else
            {
                Response.Redirect("StartHome.aspx");
            }

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
                    messageLabel.Visible = true;
                    messageLabel.Text = nameText.Text + " is added to the menu";
                    categoryText.Text = "";
                    nameText.Text = "";
                    descriptionText.Text = "";
                    priceText.Text = "";
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
                Response.Redirect("StartOrderDisplay.aspx");//TODO: redirect to start order
            }
        }
    }
}