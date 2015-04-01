using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lvw_partsItemCommand(object sender, ListViewCommandEventArgs e)
    {
        Session["databaseName"] = "Parts";
        //call partsdb and return the part
      
        int id = Convert.ToInt32(e.CommandArgument.ToString());
        // tem = PartsDB.GetPro(id);
       
        ShoppingCart.GetInstance().AddItem(id);
        Response.Redirect("ViewCart.aspx");
        

      
        

    }
}