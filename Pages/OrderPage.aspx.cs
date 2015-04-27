using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net.Mail;

public partial class Pages_OrderPage : System.Web.UI.Page
{
    private int customerId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();

            if (Session["Order"] == null)
            {
                Response.Redirect("ViewCart.aspx");
            }
            else
            {
                GetCustomerDetails();
            }
        }
    }

    private void GetCustomerDetails()
    {
        if (!(Session["Customer"] == null))
        {
            string firstName = "", lastName = "", address = "", contactNumber = "", mobileFormat = "";

            try
            {
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

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        PlaceOrder();
    }

    private void PlaceOrder()
    {
        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);   // connecting with database

            connection.Open();

            string dateNow = DateTime.Today.ToString("MM/dd/yyyy");
            dateNow += " " + DateTime.Now.ToString("HH:mm:ss");

            string newOrder = "Insert Into Orders(OrderDate, OrderStatus, CustomerId) Values ('" + dateNow + "', @OrderStatus, @CustomerId); SELECT SCOPE_IDENTITY();";

            SqlCommand commandOne = new SqlCommand(newOrder, connection);

            commandOne.Parameters.AddWithValue("@OrderStatus", "Not Processed");
            commandOne.Parameters.AddWithValue("@CustomerId", Convert.ToInt32(lblCustomerIdVal.Text));

            string scope = commandOne.ExecuteScalar().ToString();

            connection.Close();

            GetOrderItems(scope);

            Session["Order"] = "Complete";

            SendEmail();

            Response.Redirect("OrderComplete.aspx");
        }
        catch (Exception)
        {
        }
    }

    private void GetOrderItems(string scope)
    {
        List<CartItem> Items = ShoppingCart.GetInstance().Items;
        string orderItems = "";

        foreach (CartItem item in Items)
        {
            orderItems += "Insert Into Items(ItemName, Quantity, OrderId) Values ('" + item.Description + "', '" + item.Quantity + "', '" + scope + "'); ";
        }

        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);   // connecting with database

            connection.Open();

            SqlCommand commandOne = new SqlCommand(orderItems, connection);

            commandOne.ExecuteNonQuery();

            connection.Close();

            foreach (CartItem item in Items)
            {
                if (item.Prod.table.Equals("Parts"))
                {
                    try
                    {
                        SqlConnection partsConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

                        partsConnection.Open();

                        int newQuantity = CheckQuantityParts(item.Prod.Id, item.Quantity);

                        string updateCustomerDetails = "Update Parts Set Quantity = '" + newQuantity + "' Where PartId = '" + item.Prod.Id + "' ";

                        SqlCommand command = new SqlCommand(updateCustomerDetails, partsConnection);

                        command.ExecuteNonQuery();

                        partsConnection.Close();
                    }
                    catch (Exception)
                    {
                    }
                }
            }
        }
        catch (Exception)
        {
        }
    }

    private int CheckQuantityParts(int partId, int partQuantity)
    {
        int quantity = 0, newQuantity = 0;

        try
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CarZoneDBInternet"].ConnectionString);

            connection.Open();

            string getCustomerDetails = "Select Quantity From Parts Where PartId = '" + partId + "' ";

            SqlCommand command = new SqlCommand(getCustomerDetails, connection);

            SqlDataReader nwReader = command.ExecuteReader();

            while (nwReader.Read())
            {
                quantity = (int)(nwReader["Quantity"]);
            }

            nwReader.Close();

            connection.Close();

            newQuantity = quantity - partQuantity;
        }
        catch (Exception)
        {
        }

        return newQuantity;
    }

    private void SendEmail()
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        // Setting up the credentials
        System.Net.NetworkCredential credentials =
            new System.Net.NetworkCredential("ic3play@gmail.com", "0871161817");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("ic3play@gmail.com");
        msg.To.Add(new MailAddress(Session["Customer"].ToString()));

        msg.Subject = "CarZone - Your Order Invoice";
        msg.IsBodyHtml = true;
        msg.Body = string.Format(
            "<html><head></head><body>#body#<br></body>").Replace("#body#", getMessage());
        try
        {
            client.Send(msg);
        }
        catch (Exception)
        {
        }
    }
    
    StringBuilder messageBody = new StringBuilder();

    private string getMessage()
    {
        ShoppingCart temp = ShoppingCart.GetInstance();
        string userEmail = Session["Customer"].ToString();

        messageBody.Append("<b> Shipping Details <br>");
        messageBody.Append(lblName.Text.ToString()+"<br>");
        messageBody.Append(lblAddress.Text.ToString()+"<br>");
        messageBody.Append(lblContactNumber.Text.ToString() + "</b><br><br><br>");

       
        messageBody.Append("Please Review your invoice details bellow. <br>");

        for (int i = 0; i < temp.Items.Count; i++)
        {
            CartItem tempItem = temp.Items.ElementAt(i);
            messageBody.AppendLine("<ul><li>" + tempItem.Description + "&nbsp;Quantity:" + tempItem.Quantity + "&nbsp;Unit Price:" + tempItem.UnitPrice.ToString("C") + "<br></li></ul>");
        }
        messageBody.Append("<b>Your subtotal is: " + temp.GetSubTotal().ToString("C")+".</b><br><br>");
        messageBody.Append("<b>Thank you for your order from carzone</b><br>");
        return messageBody.ToString();
    }
}