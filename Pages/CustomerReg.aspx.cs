﻿using System;
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
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!CheckIfAccountExists(txtEmail.Text))
        {
            try
            {
                string dateFormat = "", mobileFormat = "";

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);   // connecting with database

                connection.Open();

                dateFormat = txtDOB.Text.Substring(6, 4);
                dateFormat += txtDOB.Text.Substring(3, 2);
                dateFormat += txtDOB.Text.Substring(0, 2);

                mobileFormat = txtMobileNum.Text.Substring(0, 3);
                mobileFormat += txtMobileNum.Text.Substring(4, 7);

                string insertIntoCustomers = "Insert Into Customers(FirstName, LastName, Address, ContactNumber, DateOfBirth) Values (@FirstName, @LastName, @Address, @ContactNumber, @DateOfBirth);" +
                                             "Insert Into CustomerAccounts(Email, Password, CustomerId) Values (@Email, @Password, SCOPE_IDENTITY())";

                SqlCommand commandOne = new SqlCommand(insertIntoCustomers, connection);

                commandOne.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                commandOne.Parameters.AddWithValue("@LastName", txtLastName.Text);
                commandOne.Parameters.AddWithValue("@Address", txtAddress.Text);
                commandOne.Parameters.AddWithValue("@ContactNumber", mobileFormat);
                commandOne.Parameters.AddWithValue("@DateOfBirth", dateFormat);
                commandOne.Parameters.AddWithValue("@Email", txtEmail.Text);
                commandOne.Parameters.AddWithValue("@Password", txtPassword.Text);

                commandOne.ExecuteNonQuery();

                connection.Close();

                lblResult.Text = "Registration Successful!";
            }
            catch (Exception)
            {
                lblResult.Text = "Registration Failed!";
            }
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtAddress.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtConfirmPassw.Text = "";
        txtMobileNum.Text = "";
        txtDOB.Text = "";
    }

    private bool CheckIfAccountExists(string email)
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

        connection.Open();

        string checkUser = "Select Count(*) from CustomerAccounts where Email = '" + txtEmail.Text + "'";

        SqlCommand command = new SqlCommand(checkUser, connection);

        int count = Convert.ToInt32(command.ExecuteScalar().ToString());

        if (count == 1)
        {
            lblResult.Text = "Email Already Registered!";
            connection.Close();
            return true;
        }
        else
        {
            connection.Close();
            return false;
        }
    }
}