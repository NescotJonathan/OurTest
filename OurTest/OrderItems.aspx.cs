using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurTest
{
    public partial class OrderItems : System.Web.UI.Page
    {
        private Double total;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtID.Text = (string)Session["MySessionID"];
            total = 0;
        }

        protected void btnTotal_Click(object sender, EventArgs e)
        {
            if(rdSmallPizza.Checked)
            {
                total = total + 1.5;
            }
            else if(rdLargePizza.Checked)
            {
                total = total + 2.2;
            }

            if (rdThinBasePizza.Checked)
            {
                total = total + 0.2;
            }
            else if (rdThickBasePizza.Checked)
            {
                total = total + 0.9;
            }

            if (cbSalami.Checked)
            {
                total = total + 1.1;
            }

            if (cbMushrooms.Checked)
            {
                total = total + 0.9;
            }

            if (cbOnions.Checked)
            {
                total = total + 0.8;
            }

            if (cbGreenPeppers.Checked)
            {
                total = total + 0.7;
            }

            if (cbExtraCheese.Checked)
            {
                total = total + 0.6;
            }

            txtTotal.Text= total.ToString();


        }

        protected void btnCommit_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();
            var pizzas = new Pizza();
            pizzas.Customer_ID = int.Parse(txtID.Text.ToString());
            pizzas.PizzaPrice = Decimal.Parse(txtTotal.Text.ToString());

            db.Pizzas.Add(pizzas);

            db.SaveChanges();
            grdSelectedPizza.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}