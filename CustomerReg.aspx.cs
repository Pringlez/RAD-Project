using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // checking to see if user does exist otherwise no user duplicate
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDatabaseConnectionString"].ConnectionString);
            conn.Open();

            string checkUser = "select count(*) from CustomerData where UseName =' " + txtUserName.Text + " ' ";
            SqlCommand com = new SqlCommand(checkUser, conn);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("User already exists");
            }

            conn.Close();

        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid(); // for the unique id


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDatabaseConnectionString"].ConnectionString);// connecting with database
            conn.Open();

            string insertQuery = "insert into CustomerData(ID ,UseName ,Email ,Password ,FName ,LName ,Mobile ,Country) values(@Id, @Uname, @email, @password ,@fname, @lname, @mobile, @country) ";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@Id", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", txtUserName.Text);
            com.Parameters.AddWithValue("@email", txtEmail.Text);
            com.Parameters.AddWithValue("@password", txtPassword.Text);
            com.Parameters.AddWithValue("@fname", txtFirstName.Text);
            com.Parameters.AddWithValue("@lname", txtLastName.Text);
            com.Parameters.AddWithValue("@mobile", txtMobileNum.Text);
            com.Parameters.AddWithValue("@country", ddlCountry.SelectedItem.ToString());

            com.ExecuteNonQuery();
            // Response.Redirect("Administrator.aspx");

           // Response.Write("Your Registration is successful!");
            lblResult.Text = "Your Registration is successful!";

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }


    }

    
}