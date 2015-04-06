using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Product
{
    public int Id { get; set; }
    public string make { get; set; }
    public string model { get; set; }
    public string engineSize { get; set; }
    public decimal price { get; set; }
    public string image { get; set; }
    public string description { get; set; }
    public string table { get; set; }

    //This databaseName is a session variable. when user clicks on a "car", variable is set to "Cars" Database 
    //And When user adds Partsarts to a cart variable is switched to "Parts" Database..
    //This is nothing but the way of checking the database Name of the specific product that was added to the cart
    string databaseName = HttpContext.Current.Session["databaseName"].ToString();

    public Product(int id)
    {
        this.Id = id;
        Product temp = ProductDB.GetPro(id, databaseName);
        this.price = Convert.ToDecimal(temp.price);
        this.description = temp.make + "  "+ temp.model +" "+ temp.engineSize;
        this.image = temp.image;
        this.table = databaseName;
    }

    public Product()
    {
    }
}