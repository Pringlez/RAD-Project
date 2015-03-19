using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CarModels
/// </summary>
public class CarModels
{
    public string modelID { get; set; }
    public string makeID { get; set; }
    public string name { get; set; }
    public string description { get; set; }
    public decimal price { get; set; }
    public string image { get; set; }

    public CarModels(string modelID, string makeID, string name, string description, decimal price, string image)
	{
        this.modelID = modelID;
        this.makeID = makeID;
        this.name = name;
        this.description = description;
        this.price = price;
        this.image = image;
	}
}