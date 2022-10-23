using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfOrderManagementSystem
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            DataTable dtUser = getData("userLogin");

            if (dtUser.Rows.Count > 0)
            {
                DataRow dr = dtUser.Rows[0];
                Session["UserID"] = Convert.ToInt32(dr["UserID"].ToString());
                Response.Redirect("Home.aspx");
            }

            else
            {
                messageLabel.Text = "Incorrect Username or Password or Brand Name";
            }
        }

        private DataTable getData(string cmd)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            if (cmd.Equals("userLogin"))
            {
                da.SelectCommand.Parameters.AddWithValue("@brandname", brandText.Text);
                da.SelectCommand.Parameters.AddWithValue("@username", usernameText.Text);
                da.SelectCommand.Parameters.AddWithValue("@password", passwordText.Text);

                da.Fill(dt);
            }

            return dt;
        }
    }
}