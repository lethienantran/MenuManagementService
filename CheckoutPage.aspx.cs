using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfOrderManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerMenu.aspx");
        }

        protected void submitOrderButton_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Submit Order Successfully. Please Pay At The Register!');window.location ='StartOrderDisplay.aspx';",true);
        }
    }
}