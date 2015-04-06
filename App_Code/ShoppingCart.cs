using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class ShoppingCart
{
    #region Properties
    public List<CartItem> Items { get; private set; }
    #endregion

    #region Singleton Implementation

    public static ShoppingCart GetInstance()
    {
        ShoppingCart cart = (ShoppingCart)HttpContext.Current.Session["ASPNETShoppingCart"];

        if (cart == null)
        {
            HttpContext.Current.Session["ASPNETShoppingCart"] = cart = new ShoppingCart();
        }

        return cart;
    }

    protected ShoppingCart()
    {
        Items = new List<CartItem>();
    }

    #endregion

    #region Item Modification Methods

    public void AddItem(int productId, int quantityAvailable)
    {
        // Create a new item to add to the cart
        CartItem newItem = new CartItem(productId);

        // If this item already exists in our list of items, increase the quantity
        // Otherwise, add the new item to the list
        if (Items.Contains(newItem))
        {
            foreach (CartItem item in Items)
            {
                if (item.Equals(newItem))
                {
                    if (item.Quantity < quantityAvailable)
                    {
                        item.Quantity++;
                        return;
                    }
                }
            }
        }
        else
        {
            newItem.Quantity = 1;
            Items.Add(newItem);
        }
    }
  
    public void SetItemQuantity(int productId, int quantity)
    {
        // If we are setting the quantity to 0, remove the item entirely
        if (quantity == 0)
        {
            RemoveItem(productId);
            return;
        }

        // Find the item and update the quantity
        CartItem updatedItem = new CartItem(productId);

        foreach (CartItem item in Items)
        {
            if (item.Equals(updatedItem))
            {
                item.Quantity = quantity;
                return;
            }
        }
    }

    public void RemoveItem(int productId)
    {
        CartItem removedItem = new CartItem(productId);
        Items.Remove(removedItem);
    }
    #endregion

    #region Subtotal Methods

    public decimal GetSubTotal()
    {
        decimal subTotal = 0;
        foreach (CartItem item in Items)
            subTotal += item.TotalPrice;

        return subTotal;
    }
    #endregion
}