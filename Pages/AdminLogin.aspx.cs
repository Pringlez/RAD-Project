using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

        connection.Open();

        string checkUser = "Select Count(*) from AdminAccounts Where Email = '" + txtEmail.Text + "' And Password = '" + txtPassword.Text + "'";
        SqlCommand command = new SqlCommand(checkUser, connection);

        int userExists = Convert.ToInt32(command.ExecuteScalar().ToString());

        connection.Close();

        if (userExists == 1) // if true then login user
        {
            Session["New"] = txtEmail.Text;
            lblResult.Text = "Login Successful!";
        }
        else // else display error message
        {
            lblResult.Text = "Email or Password Incorrect!";
        }
    }
}