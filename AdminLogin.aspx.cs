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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneTestDBConnectionString"].ConnectionString);
        conn.Open();

        string checkUser = "select count(*) from CustomerAccounts where Email ='" + txtUsername.Text + "' ";
        SqlCommand com = new SqlCommand(checkUser, conn);

        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();

        if (temp == 1) //checking if username is correct or exist
        {
            conn.Open();
            string checkPasswordQuery = "select password from CustomerAccounts where Email ='" + txtUsername.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);

            // searches the passw from database based on what the user enters in textbox and if it has spaces in btwn it replaces with no spaces
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

            //verifying password which user enters via textbox--if they match
            if (password == txtPassword.Text)
            {
                Session["New"] = txtUsername.Text;

                //Response.Write("Password is correct");
                lblResult.Text = "Password is correct";
                Response.Redirect("CustomerAccount.aspx");
            }
            else
            {
                // Response.Write("Password is incorrect");
                lblResult.Text = "Password is correct";
            }

        }
        else
        {
            //Response.Write("Username is not correct");
            lblResult.Text = "Password is correct";
        }

    }
}