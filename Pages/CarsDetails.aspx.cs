using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_CarsDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     /// lbl1.Text = Request.QueryString["carID"].ToString();
        //lbl1.Text ="Hello";
        string carID = Request.QueryString["carID"].ToString();
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}