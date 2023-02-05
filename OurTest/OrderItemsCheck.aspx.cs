using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OurTest
{
    public partial class OrderItemsCheck : System.Web.UI.Page
    {
        private Double total;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["MySessionID"] = "1";
            txtbID.Text = (string)Session["MySessionID"];
            total = 0;


            if (rdbSmallPizza.Checked)
            {
                total = total + 1.5;
            }
            else if (rdbLargePizza.Checked)
            {
                total = total + 2.2;
            }

            if (rdbThinBasePizza.Checked)
            {
                total = total + 0.2;
            }
            else if (rdbThickBasePizza.Checked)
            {
                total = total + 0.9;
            }

            if (cbbSalami.Checked)
            {
                total = total + 1.1;
            }

            if (cbbMushrooms.Checked)
            {
                total = total + 0.9;
            }

            if (cbbOnions.Checked)
            {
                total = total + 0.8;
            }

            if (cbbGreenPeppers.Checked)
            {
                total = total + 0.7;
            }

            if (cbbExtraCheese.Checked)
            {
                total = total + 0.6;
            }

            txtbTotal.Text = total.ToString();

        }

        protected void btnbTotal_Click(object sender, EventArgs e)
        {
            if(rdbSmallPizza.Checked)
            {
                total = total + 1.5;
            }
            else if(rdbLargePizza.Checked)
            {
                total = total + 2.2;
            }

            if (rdbThinBasePizza.Checked)
            {
                total = total + 0.2;
            }
            else if (rdbThickBasePizza.Checked)
            {
                total = total + 0.9;
            }

            if (cbbSalami.Checked)
            {
                total = total + 1.1;
            }

            if (cbbMushrooms.Checked)
            {
                total = total + 0.9;
            }

            if (cbbOnions.Checked)
            {
                total = total + 0.8;
            }

            if (cbbGreenPeppers.Checked)
            {
                total = total + 0.7;
            }

            if (cbbExtraCheese.Checked)
            {
                total = total + 0.6;
            }

            txtbTotal.Text= total.ToString();


        }

        protected void btnbCommit_Click(object sender, EventArgs e)
        {
            testEntities1 db = new testEntities1();
            var pizzas = new Pizza();
            pizzas.Customer_ID = int.Parse(txtbID.Text.ToString());
            pizzas.PizzaPrice = Decimal.Parse(txtbTotal.Text.ToString());

            db.Pizzas.Add(pizzas);

            db.SaveChanges();
            grdbSelectedPizza.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnbReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}