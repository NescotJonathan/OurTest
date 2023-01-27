using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OurTest
{
    public partial class Default : System.Web.UI.Page
    {
        private String sessionFirstName;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)Session["MySessionName"];
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Trim().Length == 0)
            {
                sessionFirstName = "NULL";
            }
            else
            {
                sessionFirstName = txtName.Text.Trim();
            }

            lblName.Text = sessionFirstName;
            Session["MySessionName"] = sessionFirstName;
            Response.Redirect("Page2.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPizzaID.Text = GridView1.SelectedValue.ToString();
            int idxx = 2;
            txtName.Text = GridView1.SelectedRow.Cells[idxx].Text;
            int idx = 3; // 0=first column, 1=second column, 2=third column...
            txtPizzaPrice.Text = GridView1.SelectedRow.Cells[idx].Text;
            int myNumber = int.Parse(GridView1.SelectedRow.Cells[idxx].Text.ToString().Trim());
            //----Below Works!---
            GridView3.SelectRow(myNumber-1);
        }

        protected void btnShowSession_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Trim().Length == 0)
            {
                sessionFirstName = "NULL";
            }
            else
            {
                sessionFirstName = txtName.Text.Trim();
            }

            lblName.Text = sessionFirstName;
            Session["MySessionName"] = sessionFirstName;
            Response.Write(sessionFirstName);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnNewItem_Click(object sender, EventArgs e)
        {

        }

        protected void btnSaveNewItem_Click(object sender, EventArgs e)
        {

        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {

        }

        protected void btnDeleteItem_Click(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //txtFirstName.Text = GridView3.SelectedValue.ToString();
            //txtMyNumber.Text = GridView3.SelectedValue.ToString();

            int idx = 2; // 0=first column, 1=second column, 2=third column...
            txtFirstName.Text = GridView3.SelectedRow.Cells[idx].Text;
            int idxx = 3;
            txtMyNumber.Text = GridView3.SelectedRow.Cells[idxx].Text;
            //--Doesn't work (Maybe linking the wrong way around) -> int myNumber = int.Parse(GridView3.SelectedValue.ToString());
            //--Doesn't work (Maybe linking the wrong way around) -> GridView1.SelectRow(myNumber);
        }
    }
}