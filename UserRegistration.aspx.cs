using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfOrderManagementSystem
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            {
                if (passwordText.Text == confirmPasswordText.Text)
                {
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("userRegister", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@username", usernameText.Text);
                        cmd.Parameters.AddWithValue("@brandname", brandText.Text);
                        cmd.Parameters.AddWithValue("@password", passwordText.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        messageLabel.BackColor = System.Drawing.ColorTranslator.FromHtml("#4dff4d");
                        messageLabel.Text = "Successfully Registered" + usernameText.Text.ToString();
                    }
                }
                else
                {
                    messageLabel.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff4d4d");
                    messageLabel.Text = "Please make sure the passwords are matched";
                }
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StartHome.aspx");
        }
    }
}