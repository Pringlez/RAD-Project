using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["Admin"] != null)
            {
                lblWelcome.Text = "Welcome";
                lblUser.Text = Session["Admin"].ToString();
                GetAdminDetails();
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
    }

    private void GetAdminDetails()
    {
        int adminId = 0;
        string name = "", address = "", contactNumber = "", email = "", mobileFormat = "";

        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            string getAdminDetails = "Select Admins.AdminId, Admins.Name, Admins.Address, Admins.ContactNumber, AdminAccounts.Email " +
                                        "From Admins " +
                                        "Inner Join AdminAccounts " +
                                        "On Admins.AdminId = AdminAccounts.AdminId Where AdminAccounts.Email = '" + Session["Admin"] + "'";

            SqlCommand command = new SqlCommand(getAdminDetails, connection);

            SqlDataReader nwReader = command.ExecuteReader();

            while (nwReader.Read())
            {
                adminId = (int)(nwReader["AdminId"]);
                name = nwReader["Name"].ToString();
                address = nwReader["Address"].ToString();
                contactNumber = nwReader["ContactNumber"].ToString();
                email = nwReader["Email"].ToString();
            }

            nwReader.Close();

            connection.Close();

            mobileFormat = contactNumber.Substring(0, 2);
            mobileFormat = "0" + mobileFormat + "-";
            mobileFormat += contactNumber.Substring(2, 7);

            txtAdminId.Text = adminId.ToString();
            txtName.Text = name;
            txtAddress.Text = address;
            txtMobileNum.Text = mobileFormat;
            txtEmail.Text = email;
        }
        catch (Exception)
        {
            lblResult.Text = "Couldn't Retrieve Your Details!";
        }
    }

    protected void Button_LogOut_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string mobileFormat = "";

        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            mobileFormat = txtMobileNum.Text.Substring(0, 3);
            mobileFormat += txtMobileNum.Text.Substring(4, 7);

            string updateAdminDetails = "Update Admins Set Name = '" + txtName.Text + "', Address = '" + txtAddress.Text + "', ContactNumber = '" + Convert.ToInt32(mobileFormat) + "' Where AdminId = '" + txtAdminId.Text + "' " +
                                           "Update AdminAccounts Set Password = '" + txtPassword.Text + "' Where Email = '" + Session["Admin"] + "'";

            SqlCommand command = new SqlCommand(updateAdminDetails, connection);

            command.ExecuteNonQuery();

            connection.Close();

            lblResult.Text = "Your Details Were Updated!";
        }
        catch (Exception)
        {
            lblResult.Text = "Couldn't Update Customer Details!";
        }
    }
    protected void lnkBtnCarsOverview_Click(object sender, EventArgs e)
    {
        Response.Redirect("CarsOverview.aspx");
    }
}