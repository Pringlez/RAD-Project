using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_CarsOverview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (gvwCarsOverview.SelectedRow == null)
        {
            dvwCarsOverview.Visible = false;
        }
        else
        {
            dvwCarsOverview.Visible = true;
        }
    }

    protected void dvwCarsOverview_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        gvwCarsOverview.DataBind();
        gvwCarsOverview.SelectRow(-1);
    }
    protected void dvwCarsOverview_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        gvwCarsOverview.DataBind();
        gvwCarsOverview.SelectRow(-1);
    }
    protected void dvwCarsOverview_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        gvwCarsOverview.DataBind();
        gvwCarsOverview.SelectRow(-1);
    }
}