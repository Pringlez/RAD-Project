using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Pages_OrderPage : System.Web.UI.Page
{
    public int productID;
    public int quantity;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
            GetCustomerDetails();
        }
    }

    private void GetCustomerDetails()
    {
        string firstName = "", lastName = "", address = "", contactNumber = "";

        if (!(Session["Customer"] == null))
        {
            try
            {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

                connection.Open();

                string getCustomerDetails = "Select Customers.FirstName, Customers.LastName, Customers.Address, Customers.ContactNumber " +
                                            "From Customers " +
                                            "Inner Join CustomerAccounts " +
                                            "On Customers.CustomerId = CustomerAccounts.CustomerId Where CustomerAccounts.Email = '" + Session["Customer"] + "'";

                SqlCommand command = new SqlCommand(getCustomerDetails, connection);

                SqlDataReader nwReader = command.ExecuteReader();

                while (nwReader.Read())
                {
                    firstName = nwReader["FirstName"].ToString();
                    lastName = nwReader["LastName"].ToString();
                    address = nwReader["Address"].ToString();
                    contactNumber = nwReader["ContactNumber"].ToString();
                }

                nwReader.Close();

                connection.Close();

                lblName.Text = firstName + " " + lastName;
                lblAddress.Text = address;
                lblContactNumber.Text = contactNumber;
            }
            catch (Exception)
            {
                lblName.Text = "No Shipping Record Found!";
            }
        }
        else
        {
            Response.Redirect("CustomerLogin.aspx");
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