using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public class ProductDB
{
	public ProductDB()
	{
	}

    //Returning the instance of a product(specific product)
    public static Product GetPro(int productID, string databaseName)
    {
        if (databaseName == "Cars")
        {
            return SearchInCarsDatabase(productID);
        }
        else
        {
            return SearchInPartsDatabase(productID);
        }
    }

    private static Product SearchInPartsDatabase(int productID)
    {
        SqlConnection connection = new SqlConnection(GetConnectionString());

        string search = "SELECT PartName, Manufacturer, Price "
            + "FROM Parts "
            + "WHERE PartId = @PartId "
            + "ORDER BY PartId";

        SqlCommand cmd = new SqlCommand(search, connection);
        cmd.Parameters.AddWithValue("PartId", productID);

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

    private static Product SearchInCarsDatabase(int productID)
    {
        SqlConnection connection = new SqlConnection(GetConnectionString());

        string search = "SELECT Make, Model, EngineSize, "
            + "Price, ImageOnFile "
            + "FROM Cars "
            + "WHERE carId = @carID "
            + "ORDER BY carId";

        SqlCommand cmd = new SqlCommand(search, connection);
        cmd.Parameters.AddWithValue("carID", productID);

        connection.Open();

        SqlDataReader nwReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Product product = null;

        while (nwReader.Read())
        {
            product = new Product();
            product.make = nwReader["Make"].ToString();
            product.model = nwReader["Model"].ToString();
            product.engineSize = nwReader["EngineSize"].ToString();
            product.price = Convert.ToInt32(nwReader["Price"]);
            product.image = nwReader["ImageOnFile"].ToString();
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