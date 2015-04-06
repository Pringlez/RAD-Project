using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public class PartsDB
{
    public PartsDB()
    {
    }

    //Returning the instance of a product(specific product)[PartName], [Manufacturer], [Price]
    public static Product GetPro(int PartId,string databaseName)
    {
        SqlConnection connection = new SqlConnection(GetConnectionString());

        string sel = "SELECT PartName, Manufacturer, Price "
            + "FROM Parts "
            + "WHERE PartId = @PartId "
            + "ORDER BY PartId";

        SqlCommand cmd = new SqlCommand(sel, connection);
        cmd.Parameters.AddWithValue("PartId", PartId);

        connection.Open();
        SqlDataReader nwReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Product product = null;

        while (nwReader.Read())
        {
            product = new Product();
            product.make = nwReader["PartName"].ToString();
            product.model = nwReader["Manufacturer"].ToString();
            product.engineSize = " ";
            product.price = Convert.ToInt32(nwReader["Price"]);
        }

        nwReader.Close();

        connection.Close();

        return product;
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["CarZoneDBInternet"].ConnectionString;
    }
}