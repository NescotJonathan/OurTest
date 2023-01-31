using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
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
        private String sessionID;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)Session["MySessionName"];
            txtID.Text = (string)Session["MySessionID"];
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
            grdSelectedPerson.SelectRow(myNumber-1);
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
            if (lblCheck.Text.Trim().Length == 0)
            {
                sessionID = "NULL";
            }
            else
            {
                sessionID = lblCheck.Text.Trim();
            }

            lblCheck.Text = sessionID;
            Session["MySessionID"] = sessionID;
            Response.Redirect("OrderItems.aspx");
        }

        protected void btnSaveNewItem_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();
            var person = new Person();
            person.FirstName = txtFirstName.Text.ToString();
            person.MyNumber = int.Parse(txtMyNumber.Text.ToString());
            db.People.Add(person);

            db.SaveChanges();
            grdSelectedPerson.DataBind();
            grdSelectedHuman.DataBind();
        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();
            var person = db.People.Find(grdSelectedPerson.SelectedValue); 
            person.FirstName = txtFirstName.Text.ToString();
            person.MyNumber = int.Parse(txtMyNumber.Text.ToString());
            db.SaveChanges();
            grdSelectedPerson.DataBind();
            grdSelectedHuman.DataBind();
        }

        protected void btnDeleteItem_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();
            var person = db.People.Find(grdSelectedPerson.SelectedValue);
            db.Entry(person).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            grdSelectedPerson.DataBind();
            grdSelectedHuman.DataBind();
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //txtFirstName.Text = GridView3.SelectedValue.ToString();
            //txtMyNumber.Text = GridView3.SelectedValue.ToString();
            int idc = 1; // 0=first column, 1=second column, 2=third column...
            txtID.Text = grdSelectedPerson.SelectedRow.Cells[idc].Text;
            lblCheck.Text = grdSelectedPerson.SelectedRow.Cells[idc].Text;

            int idx = 2; // 0=first column, 1=second column, 2=third column...
            txtFirstName.Text = grdSelectedPerson.SelectedRow.Cells[idx].Text;
            int idxx = 3;
            txtMyNumber.Text = grdSelectedPerson.SelectedRow.Cells[idxx].Text;
            //--Doesn't work (Maybe linking the wrong way around) -> int myNumber = int.Parse(GridView3.SelectedValue.ToString());
            //--Doesn't work (Maybe linking the wrong way around) -> GridView1.SelectRow(myNumber);
        }
    }
}