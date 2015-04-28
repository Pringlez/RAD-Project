using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pages_ViewCart : System.Web.UI.Page
{
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
        int rowIndex = gvwRow.RowIndex;
        int rowNum = 0, itemID = 0;
        string table = "";

        TextBox qtyTextBox = (TextBox)sender;

        int itemQty = 0;

        try
        {
            itemQty = Convert.ToInt32(qtyTextBox.Text.ToString());
        }
        catch (Exception)
        {
        }

        List<CartItem> Items = ShoppingCart.GetInstance().Items;

        foreach (CartItem item in Items)
        {
            if (rowNum == rowIndex)
            {
                table = item.Prod.table;
                itemID = item.Prod.Id;

                if (table.Equals("Parts"))
                {
                    if (CheckQuantity(itemID, itemQty))
                    {
                        UpdateQuantity(itemID, itemQty);
                    }
                }
                else
                {
                    UpdateQuantity(itemID, itemQty);
                }
            }
            rowNum++;
        }
    }

    private void UpdateQuantity(int itemID, int itemQty)
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
            Session["Order"] = "Pending";
            Response.Redirect("OrderPage.aspx");
        }
    }

    private bool CheckQuantity(int itemID, int itemQty)
    {
        int quantity = 0;

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

        connection.Open();

        string checkQuantity = "Select Quantity from Parts Where PartId = '" + itemID + "'";
        SqlCommand command = new SqlCommand(checkQuantity, connection);

        SqlDataReader nwReader = command.ExecuteReader();

        while (nwReader.Read())
        {
            quantity = (int)(nwReader["Quantity"]);
        }

        nwReader.Close();

        connection.Close();

        if (itemQty <= quantity)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}