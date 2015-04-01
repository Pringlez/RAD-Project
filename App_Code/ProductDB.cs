using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for ProductDB
/// </summary>
public class ProductDB
{
    public ProductDB()
    {

    }

    //Returning the instance of a product(specific product)
    public static Product GetPro(int carID,string databaseName)
    {
        if (databaseName == "Cars")
        {
            return SearchInCarsDatabase(carID);
        }
        else
        {
            return SearchInPartsDatabase(carID);

        }
    }

    private static Product SearchInPartsDatabase(int carID)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT PartName, Manufacturer, Price "
            + "FROM Parts "
            + "WHERE PartId = @PartId "
            + "ORDER BY PartId";
        SqlCommand cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("PartId", carID);

        con.Open();
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        Product product = null;
        while (dr.Read())
        {
            product = new Product();

            product.make = dr["PartName"].ToString();
            product.model = dr["Manufacturer"].ToString();
            product.engineSize = " ";
            product.Price = Convert.ToInt32(dr["Price"]);

        }
        return product;
    }

    private static Product SearchInCarsDatabase(int carID)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());

        string sel = "SELECT Make, Model, EngineSize, "
            + "Price, ImageOnFile "
            + "FROM Cars "
            + "WHERE carId = @carID "
            + "ORDER BY carId";

        SqlCommand cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("carID", carID);

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
<<<<<<< HEAD
        Product product = null;
        while (dr.Read())
        {
            product = new Product();

=======

        Product product = null;

        while (dr.Read())
        {
            product = new Product();
>>>>>>> origin/master
            product.make = dr["Make"].ToString();
            product.model = dr["Model"].ToString();
            product.engineSize = dr["EngineSize"].ToString();
            product.Price = Convert.ToInt32(dr["Price"]);
            product.Image = dr["ImageOnFile"].ToString();
        }

        return product;
    }

    //Connecting String
    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["CarZoneDBInternet"].ConnectionString;
    }
}