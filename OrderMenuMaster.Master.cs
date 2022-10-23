using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfOrderManagementSystem
{
    public partial class OrderMenuMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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