using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/**
 * The Product class
 * 
 * This is just to simulate some way of accessing data about  our products-Generic Class that is 
 * used for both cars and parts
 */

public class Product
{
    public int Id { get; set; }
    public string make { get; set; }
    public string model { get; set; }
    public string engineSize { get; set; }
    public decimal Price { get; set; }
    public string Image { get; set; }
    public string Description { get; set; }

    //This databaseName is a session variable. when user clicks on a "car", variable is set to "Cars" Database 
    //And When user adds Partsarts to a cart variable is switched to "Parts" Database..
    //This is nothing but the way of checking the database Name of the specific product that was added to the cart
    string databaseName = HttpContext.Current.Session["databaseName"].ToString();

    public Product(int id)
    {
        this.Id = id;
        Product temp = ProductDB.GetPro(id,databaseName);
        this.Price = Convert.ToDecimal(temp.Price);
        this.Description = temp.make + "  "+ temp.model +" "+ temp.engineSize;
        this.Image = temp.Image;
    }

    public Product()
    {
     
        /*Product temp = ProductDB.GetPro(id);
        this.Price = Convert.ToDecimal(temp.Price);
        this.Description = temp.make + "  " + temp.model + " " + temp.engineSize;
        this.Image = temp.Image;*/
    }
}