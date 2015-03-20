using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            lblWelcome.Text = "Welcome";
            lblUser.Text += Session["New"].ToString();
        }
        else
        {
            Response.Redirect("CustomerLogin.aspx");
        }
    }
    protected void Button_LogOut_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("CustomerLogin.aspx");
    }
}