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
        private String sessionFirstName;        //Global variable that can be accessed by any method inside this form
        private String sessionID;       //Global variable that can be accessed by any method inside this form
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)Session["MySessionName"];        //Loading SESSION Variable that can be used on this and ANY other form
            txtID.Text = (string)Session["MySessionID"];        //Loading SESSION Variable that can be used on this and ANY other form
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Trim().Length == 0)
            {
                sessionFirstName = "NULL";      //Checking if there is a VALUE assigned to the FIELD that I want to USE as my SESSION VARIABLE
            }
            else
            {
                sessionFirstName = txtName.Text.Trim();     //Assigning a VALUE assigned to the GLOBAL Variable from a FIELD that I want to USE as my SESSION VARIABLE
            }

            lblName.Text = sessionFirstName;        //Setting a label to the Global Variable to see that it has the CORRECT VALUE
            Session["MySessionName"] = sessionFirstName;        //Setting the SESSION Variable to the GLOBAL variable (that we got from the FIELD)
            Response.Redirect("Page2.aspx");        //Sending the SESSION VARIABLE to another PAGE
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPizzaID.Text = GridView1.SelectedValue.ToString();       //Setting the Pizza ID FIELD to the value of the first COLUMN in the SELECTED GRID ROW
            int idxx = 2;       //The second Column of the SELECTED GRID row
            txtName.Text = GridView1.SelectedRow.Cells[idxx].Text;      //Setting the FIELD to the value of the SECOND COLUMN in the SELECTED GRID ROW
            int idx = 3;        // 0=first column, 1=second column, 2=third column...
            txtPizzaPrice.Text = GridView1.SelectedRow.Cells[idx].Text;     //Setting the FIELD to the value of the THIRD COLUMN in the SELECTED GRID ROW
            int myNumber = int.Parse(GridView1.SelectedRow.Cells[idxx].Text.ToString().Trim());     //CONVERT a string to an integer
            grdSelectedPerson.SelectRow(myNumber-1);        //The Value in this GRID begins at 0, so had to USE minus 1 (because the VALUE began at 1)
        }

        protected void btnShowSession_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Trim().Length == 0)
            {
                sessionFirstName = "NULL";      //Checking if there is a VALUE assigned to the FIELD that I want to USE as my SESSION VARIABLE
            }
            else
            {
                sessionFirstName = txtName.Text.Trim();     //Assigning a VALUE assigned to the GLOBAL Variable from a FIELD that I want to USE as my SESSION VARIABLE
            }

            lblName.Text = sessionFirstName;        //Setting a label to the Global Variable to see that it has the CORRECT VALUE
            Session["MySessionName"] = sessionFirstName;        //Setting the SESSION Variable to the GLOBAL variable (that we got from the FIELD)
            Response.Write(sessionFirstName);       //Sending the SESSION VARIABLE this PAGE
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnNewItem_Click(object sender, EventArgs e)
        {
            if (lblCheck.Text.Trim().Length == 0)
            {
                sessionID = "NULL";     //Checking if there is a VALUE assigned to the FIELD that I want to USE as my SESSION VARIABLE
            }
            else
            {
                sessionID = lblCheck.Text.Trim();       //Assigning a VALUE assigned to the GLOBAL Variable from a FIELD that I want to USE as my SESSION VARIABLE
            }

            lblCheck.Text = sessionID;      //Setting a label to the Global Variable to see that it has the CORRECT VALUE
            Session["MySessionID"] = sessionID;     //Setting the SESSION Variable to the GLOBAL variable (that we got from the FIELD)
            Response.Redirect("OrderItems.aspx");       //The Value in this GRID begins at 0, so had to USE minus 1 (because the VALUE began at 1)
        }

        protected void btnSaveNewItem_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();     //Your Database as listed in your Web.config FILE under: <connectionStrings> < add name = "testEntities" ...  < add name = "testEntities1" ...
            var person = new Person();      //Person is a TABLE in your DB
            person.FirstName = txtFirstName.Text.ToString();        //FIELD NAMES in your Database Table
            person.MyNumber = int.Parse(txtMyNumber.Text.ToString());       //FIELD NAMES in your Database Table -> and here you are ALSO CONVERTING an INT to a STRING
            db.People.Add(person);      //ADDING the fields that you've just specified in the CODE ABOVE this line

            db.SaveChanges();       //COMMITTING your CHANGE
            grdSelectedPerson.DataBind();       //updating this DATAGRID that you HAD to NAME / RENAME from Datagrid1 to grdSelected... as an ID in your DATAGRID Properties on the WEBFORM to USE
            grdSelectedHuman.DataBind();        //updating the other DATAGRID that you HAD to NAME / RENAME from Datagrid1 to grdSelected... as an ID in your DATAGRID Properties on the WEBFORM to USE
        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();     //Your Database as listed in your Web.config FILE under: <connectionStrings> < add name = "testEntities" ...  < add name = "testEntities1" ...
            var person = db.People.Find(grdSelectedPerson.SelectedValue); //Person is a TABLE in your DB -> and you are finding and SELECTING the SPECIFIC Person (Value) in your Database from this DATAGRID 
            person.FirstName = txtFirstName.Text.ToString();        //FIELD NAMES in your Database Table
            person.MyNumber = int.Parse(txtMyNumber.Text.ToString());       //FIELD NAMES in your Database Table -> and here you are ALSO CONVERTING an INT to a STRING
            db.SaveChanges();       //COMMITTING your CHANGE
            grdSelectedPerson.DataBind();       //updating this DATAGRID that you HAD to NAME / RENAME from Datagrid1 to grdSelected... as an ID in your DATAGRID Properties on the WEBFORM to USE
            grdSelectedHuman.DataBind();        //updating the other DATAGRID that you HAD to NAME / RENAME from Datagrid1 to grdSelected... as an ID in your DATAGRID Properties on the WEBFORM to USE
        }

        protected void btnDeleteItem_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();
            var person = db.People.Find(grdSelectedPerson.SelectedValue); //Person is a TABLE in your DB -> and you are finding and SELECTING the SPECIFIC Person (Value) in your Database from this DATAGRID 
            db.Entry(person).State = System.Data.Entity.EntityState.Deleted; // DELETING the ROW or RECORD that you SELECTED in THE Datagrid from the DATABASE TABLE
            db.SaveChanges();       //COMMITTING your CHANGE
            grdSelectedPerson.DataBind();       //updating this DATAGRID that you HAD to NAME / RENAME from Datagrid1 to grdSelected... as an ID in your DATAGRID Properties on the WEBFORM to USE
            grdSelectedHuman.DataBind();        //updating the other DATAGRID that you HAD to NAME / RENAME from Datagrid1 to grdSelected... as an ID in your DATAGRID Properties on the WEBFORM to USE
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idc = 1;        // 0=first column, 1=second column, 2=third column...
            txtID.Text = grdSelectedPerson.SelectedRow.Cells[idc].Text;
            lblCheck.Text = grdSelectedPerson.SelectedRow.Cells[idc].Text;

            int idx = 2;        // 0=first column, 1=second column, 2=third column...
            txtFirstName.Text = grdSelectedPerson.SelectedRow.Cells[idx].Text;
            int idxx = 3;
            txtMyNumber.Text = grdSelectedPerson.SelectedRow.Cells[idxx].Text;
            //--Doesn't work (Maybe linking the wrong way around) -> int myNumber = int.Parse(GridView3.SelectedValue.ToString());
            //--Doesn't work (Maybe linking the wrong way around) -> GridView1.SelectRow(myNumber);
        }
    }
}