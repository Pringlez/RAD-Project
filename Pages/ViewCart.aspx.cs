using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ViewCart : System.Web.UI.Page
{
    public int productID;
    public int quantity;

    public Dictionary<int, int> updateQuantity = new Dictionary<int, int>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }

    private void BindGrid()
    {
        gvwShoppingCart.DataSource = ShoppingCart.GetInstance().Items;
        gvwShoppingCart.DataBind();
    }

    protected void btnUpdateCart_Click(object sender, EventArgs e)
    {
        Update();
        Response.Redirect("ViewCart.aspx");
    }

    protected void TxtId_TextChanged(object sender, EventArgs e)
    {
        GridViewRow gvwRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvwRow.RowIndex;
        int counter = 0;

        foreach (GridViewRow row in gvwShoppingCart.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                TextBox qtyTextBox = (TextBox)sender;
                int itemQty = Convert.ToInt32(qtyTextBox.Text.ToString());
                LinkButton myHyperLink = row.FindControl("btnRemove") as LinkButton;
                int itemID = Convert.ToInt32(myHyperLink.CommandArgument.ToString());

                if (counter == index)
                {
                    if (updateQuantity.ContainsKey(itemID))
                    {
                        updateQuantity.TryGetValue(itemID, out itemQty);
                    }
                    else
                    {
                        updateQuantity.Add(itemID, itemQty);
                    }
                }
                counter++;
            }
        }
    }

    public void Update()
    {
        foreach (KeyValuePair<int, int> kvp in updateQuantity)
        {
            ShoppingCart.GetInstance().SetItemQuantity(kvp.Key, kvp.Value);
        }

        updateQuantity = null;
    }

    protected void gvwShoppingCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            int productID = Convert.ToInt32(e.CommandArgument);
            ShoppingCart.GetInstance().RemoveItem(productID);
            updateQuantity.Remove(productID);
        }

        DataBind();

        Response.Redirect("ViewCart.aspx");
    }

    protected void gvwShoppingCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total : " + ShoppingCart.GetInstance().GetSubTotal().ToString("C");
        }
    }

    protected void btnOrder_Click(object sender, EventArgs e)
    {
        // Check here if user is logged in, if not then re-direct to login
        if (Session["Customer"] == null)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
        else
        {
            Response.Redirect("OrderPage.aspx");
        }
    }
}