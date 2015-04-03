using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["Customer"] != null)
            {
                lblWelcome.Text = "Welcome";
                lblUser.Text = Session["Customer"].ToString();
                GetCustomerDetails();
            }
            else
            {
                Response.Redirect("CustomerLogin.aspx");
            }
        }
    }

    private void GetCustomerDetails()
    {
        int customerId = 0;
        string firstName = "", lastName = "", address = "", contactNumber = "", dateOfBirth = "", email = "";

        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            string getCustomerDetails = "Select Customers.CustomerId, Customers.FirstName, Customers.LastName, Customers.Address, Customers.ContactNumber, Customers.DateOfBirth, CustomerAccounts.Email " +
                                        "From Customers " +
                                        "Inner Join CustomerAccounts " +
                                        "On Customers.CustomerId = CustomerAccounts.CustomerId Where CustomerAccounts.Email = '" + Session["Customer"] + "'";

            SqlCommand command = new SqlCommand(getCustomerDetails, connection);

            SqlDataReader nwReader = command.ExecuteReader();

            while (nwReader.Read())
            {
                customerId = (int)(nwReader["CustomerId"]);
                firstName = nwReader["FirstName"].ToString();
                lastName = nwReader["LastName"].ToString();
                address = nwReader["Address"].ToString();
                contactNumber = nwReader["ContactNumber"].ToString();
                dateOfBirth = nwReader["DateOfBirth"].ToString().Substring(0, 10);
                email = nwReader["Email"].ToString();
            }

            nwReader.Close();

            connection.Close();

            txtCustomerId.Text = customerId.ToString();
            txtFirstName.Text = firstName;
            txtLastName.Text = lastName;
            txtAddress.Text = address;
            txtMobileNum.Text = contactNumber;
            txtDOB.Text = dateOfBirth;
            txtEmail.Text = email;
        }
        catch (Exception)
        {
            lblResult.Text = "Couldn't Update Your Details!";
        }
    }

    protected void Button_LogOut_Click(object sender, EventArgs e)
    {
        Session["Customer"] = null;
        Response.Redirect("CustomerLogin.aspx");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string dateFormat = "", mobileFormat = "";

        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            dateFormat = txtDOB.Text.Substring(6, 4);
            dateFormat += txtDOB.Text.Substring(3, 2);
            dateFormat += txtDOB.Text.Substring(0, 2);

            mobileFormat = txtMobileNum.Text.Substring(0, 3);
            mobileFormat += txtMobileNum.Text.Substring(4, 7);

            string updateCustomerDetails = "Update Customers Set FirstName = '" + txtFirstName.Text + "', LastName = '" + txtLastName.Text + "', Address = '" + txtAddress.Text + "', ContactNumber = '" + Convert.ToInt32(mobileFormat) + "', DateOfBirth = '" + dateFormat + "' Where CustomerId = '" + txtCustomerId.Text + "' " +
                                           "Update CustomerAccounts Set Password = '" + txtPassword.Text + "' Where Email = '" + Session["Customer"] + "'";

            SqlCommand command = new SqlCommand(updateCustomerDetails, connection);

            command.ExecuteNonQuery();

            connection.Close();

            lblResult.Text = "Your Details Were Updated!";
        }
        catch (Exception)
        {
            lblResult.Text = "Couldn't Update Customer Details!";
        }
    }
}