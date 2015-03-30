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
    public  static string carID;
    protected void Page_Load(object sender, EventArgs e)
    {
     /// lbl1.Text = Request.QueryString["carID"].ToString();
        //lbl1.Text ="Hello";
        
         carID = Request.QueryString["carID"].ToString();
       
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
   // Product temp;
    protected void Button3_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(carID);
        ShoppingCart.GetInstance().AddItem(id);
        Response.Redirect("ViewCart.aspx");
        
      
    }
   
    /*public static Product getProduct()
    {
        return ProductDB.GetPro(Convert.ToInt32(carID));
    }*/
   

   
}