using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SelfOrderManagementSystem
{
    public partial class SelfOrder : System.Web.UI.MasterPage
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

                logoutButton.Visible = true;
                logoutButton.Text = "Logout";

                loginHyperLink.Visible = false;
                registerHyperLink.Visible = false;

                welcomeLabel.Visible = true;
                welcomeLabel.Text = "" + dr["BrandName"];
            }

            else
            {
                logoutButton.Visible = false;
                logoutButton.Text = "Logout";

                loginHyperLink.Visible = true;
                loginHyperLink.Text = "Login";

                registerHyperLink.Visible = true;
                registerHyperLink.Text = "Register";

                welcomeLabel.Visible = false;
                welcomeLabel.Text = "";

            }
        }
        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            logoutButton.Visible = false;
            welcomeLabel.Visible = false;
            registerHyperLink.Visible = true;
            registerHyperLink.Text = "Register";
            loginHyperLink.Visible = true;
            loginHyperLink.Text = "Login";
        }
    }
}