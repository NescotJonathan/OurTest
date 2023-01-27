﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurTest
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNamePassed.Text = (string)Session["MySessionName"];
        }

        protected void btnDefault_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}