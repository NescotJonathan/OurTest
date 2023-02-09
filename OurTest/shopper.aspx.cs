using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurTest
{
    public partial class shopper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddPizza_Click(object sender, EventArgs e)
        {
            txtValue.Text = "5";
        }

        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
            txtValue.Text = "5";
        }
    }
}