using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;

public partial class Pages_CarsDetails : System.Web.UI.Page
{
    private string carID;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            carID = Request.QueryString["carID"].ToString();
        }
        catch(Exception)
        {
            Response.Redirect("Cars.aspx");
        }
    }

    protected void AddToCart_Click(object sender, EventArgs e)
    {
        Session["databaseName"] = "Cars";
        int id = Convert.ToInt32(carID);
        ShoppingCart.GetInstance().AddItem(id, 1000);
        Response.Redirect("ViewCart.aspx");
    }
}