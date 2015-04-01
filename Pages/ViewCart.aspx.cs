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

    bool hasQuantityChanged;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //ViewState["dt"] = dt;
            this.BindGrid();
        }
    }

    private void BindGrid()
    {
        gvShoppingCart.DataSource = ShoppingCart.GetInstance().Items;
        gvShoppingCart.DataBind();
    }

    protected void btnUpdateCart_Click(object sender, EventArgs e)
    {
        update();
        Response.Redirect("ViewCart.aspx");
    }

    protected void TxtId_TextChanged(object sender, EventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int index = gvRow.RowIndex;
        hasQuantityChanged = true;
        int counter = 0;

        //int id = gvRow.RowIndex[index].Cells[1].Text;
        //GridViewRow row = gvShoppingCart.SelectedRow;
        //GridView currentRow = (GridView)((TextBox)sender).Parent.Parent.Parent.Parent;

        /* TextBox qtyTextBox = (TextBox)sender;
         int itemQty = Convert.ToInt32(qtyTextBox.Text.ToString());
         LinkButton myHyperLink = currentRow.FindControl("btnRemove") as LinkButton;
         int itemID = Convert.ToInt32(myHyperLink.CommandArgument.ToString());*/

        foreach (GridViewRow row in gvShoppingCart.Rows)
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

    public void update()
    {
        foreach (KeyValuePair<int, int> kvp in updateQuantity)
        {
            ShoppingCart.GetInstance().SetItemQuantity(kvp.Key, kvp.Value);
        }

        updateQuantity = null;
        // BindGrid(); 
    }

    protected void gvShoppingCart_RowCommand(object sender, GridViewCommandEventArgs e)
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

    protected void gvShoppingCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total : " + ShoppingCart.GetInstance().GetSubTotal().ToString("C");
        }
    }

    protected void gvShoppingCart_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string test = "Hello";
    }

    protected void gvShoppingCart_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //string str;
    }

    protected void rowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

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