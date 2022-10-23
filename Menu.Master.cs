using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SelfOrderManagementSystem
{
    public partial class Menu : System.Web.UI.MasterPage
    {
        string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("select CategoryName from Category where UserID = " + Session["UserID"].ToString(), con);

            DataSet ds = new DataSet();
            da.Fill(ds);
            repeater.DataSource = ds;
            repeater.DataBind();
        }
    }
}