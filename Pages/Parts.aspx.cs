using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void lvw_partsItemCommand(object sender, ListViewCommandEventArgs e)
    {
        try
        {
            string[] arg = new string[2];
            arg = e.CommandArgument.ToString().Split(';');

            int id = Convert.ToInt32(arg[0]);
            int quantity = Convert.ToInt32(arg[1]);

            if (quantity > 0)
            {
                ShoppingCart.GetInstance().AddItem(id, quantity);
                Session["databaseName"] = "Parts";
                Response.Redirect("ViewCart.aspx");
            }
            else
            {
                lblResult.Text = "That Item is Currently Sold Out!";
            }
        }
        catch(Exception)
        {
            lblResult.Text = "Couldn't Add Item to Cart!";
        }
    }
}