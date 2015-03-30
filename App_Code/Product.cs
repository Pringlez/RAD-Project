using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/**
 * The Product class
 * 
 * This is just to simulate some way of accessing data about  our products
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
   
    public Product(int id)
    {
        this.Id = id;
        Product temp = ProductDB.GetPro(id);
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