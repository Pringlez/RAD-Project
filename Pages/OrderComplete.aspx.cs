using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;

public partial class Pages_OrderPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
            if (Session["Order"] == null)
            {
                Response.Redirect("ViewCart.aspx");
            }
            else if (Session["Order"] != "Complete")
            {
                Response.Redirect("OrderPage.aspx");
            }
            else
            {
                Session["Order"] = null;
                ShoppingCart.GetInstance().Items.Clear();
            }
        }
    }

    private void BindGrid()
    {
        gvwOrderList.DataSource = ShoppingCart.GetInstance().Items;
        gvwOrderList.DataBind();
    }

    protected void gvwOrderList_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total : " + ShoppingCart.GetInstance().GetSubTotal().ToString("C");
        }
    }
}