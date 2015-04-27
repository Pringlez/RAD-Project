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
    private string orderID;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            try
            {
                orderID = Request.QueryString["orderID"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("../Index.aspx");
            }

            if (Session["Customer"] == null && Session["Admin"] == null)
            {
                Response.Redirect("../Index.aspx");
            }
            else
            {
                int customerId = 0;
                customerId = GetCustomerId();
                GetCustomerDetails(customerId);
            }
        }
    }

    private int GetCustomerId()
    {
        try
        {
            int customerId = 0;

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            string getCustomerDetails = "Select CustomerId " +
                                        "From Orders " +
                                        "Where OrderId = '" + orderID + "'";

            SqlCommand command = new SqlCommand(getCustomerDetails, connection);

            SqlDataReader nwReader = command.ExecuteReader();

            while (nwReader.Read())
            {
                customerId = (int)nwReader["CustomerId"];
            }

            nwReader.Close();

            connection.Close();

            return customerId;
        }
        catch (Exception)
        {
            return 0;
        }
    }

    private void GetCustomerDetails(int customerId)
    {
        try
        {
            string firstName = "", lastName = "", address = "", contactNumber = "", mobileFormat = "";

            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            string getCustomerDetails = "Select Customers.CustomerId, Customers.FirstName, Customers.LastName, Customers.Address, Customers.ContactNumber " +
                                        "From Customers " +
                                        "Inner Join CustomerAccounts " +
                                        "On Customers.CustomerId = CustomerAccounts.CustomerId Where CustomerAccounts.Email = '" + Session["Customer"] + "'";

            SqlCommand command = new SqlCommand(getCustomerDetails, connection);

            SqlDataReader nwReader = command.ExecuteReader();

            while (nwReader.Read())
            {
                customerId = (int)nwReader["CustomerId"];
                firstName = nwReader["FirstName"].ToString();
                lastName = nwReader["LastName"].ToString();
                address = nwReader["Address"].ToString();
                contactNumber = nwReader["ContactNumber"].ToString();
            }

            nwReader.Close();

            connection.Close();

            mobileFormat = contactNumber.Substring(0, 2);
            mobileFormat = "0" + mobileFormat + "-";
            mobileFormat += contactNumber.Substring(2, 7);

            lblCustomerIdVal.Text = customerId.ToString();
            lblName.Text = firstName + " " + lastName;
            lblAddress.Text = address;
            lblContactNumber.Text = mobileFormat;
        }
        catch (Exception)
        {
            lblName.Text = "No Shipping Record Found!";
        }
    }
}