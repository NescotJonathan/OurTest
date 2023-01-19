using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPizzaPrice.Text = GridView1.SelectedValue.ToString();
            
            int idx = 3; // 0=first column, 1=second column, 2=third column...
            lblPizzaPrice.Text = GridView1.SelectedRow.Cells[idx].Text;

            //TextBox2.Text += GridView4.Rows[i].Cells[1].Value.ToString() + ", ";
            //txtPizzaPrice.Text = Gridview1.SelectedRow.Cells[1].Text;
            //lblPizzaPrice.Text = Gridview1.SelectedRow.Cells[2].Text;
            //lblPizzaPrice.Text = Gridview1.SelectedRow.Cells[3].Text;
        }
    }
}