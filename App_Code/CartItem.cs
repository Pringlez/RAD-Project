using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItem : IEquatable<CartItem>
{
    #region Properties

    // A place to store the quantity in the cart
    // This property has an implicit getter and setter.
    public int Quantity { get; set; }

    private int _productId;
    public int ProductId
    {
        get { return _productId; }
        set
        {
            // To ensure that the Prod object will be re-created
            _product = null;
            _productId = value;
        }
    }

    private Product _product = null;
    public Product Prod
    {
        get
        {
            // Lazy initialization - the object won't be created until it is needed
            if (_product == null)
            {
                _product = new Product(ProductId);
            }
            return _product;
        }
    }

    public string Description
    {
        get { return Prod.description; }
    }

    public decimal UnitPrice
    {
        get { return Prod.price; }
    }

    public decimal TotalPrice
    {
        get { return UnitPrice * Quantity; }
    }

    #endregion

    // CartItem constructor just needs a productId
    public CartItem(int productId)
    {
        this.ProductId = productId;
    }

    public CartItem()
    {
    }
   
    public bool Equals(CartItem item)
    {
        return item.ProductId == this.ProductId;
    }
}