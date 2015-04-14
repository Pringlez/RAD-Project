using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_PartsOverview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["Admin"] != null)
            {
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (gvwParts.SelectedRow == null)
        {
            dvwParts.Visible = false;
        }
        else
        {
            dvwParts.Visible = true;
        }
    }

    protected void dvwParts_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        gvwParts.DataBind();
        gvwParts.SelectRow(-1);
    }

    protected void dvwParts_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        gvwParts.DataBind();
        gvwParts.SelectRow(-1);
    }

    protected void dvwParts_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        gvwParts.DataBind();
        gvwParts.SelectRow(-1);
    }
}