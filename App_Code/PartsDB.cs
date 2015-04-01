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
public class PartsDB
{
    public PartsDB()
    {

    }
    //Returning the instance of a product(specific product)[PartName], [Manufacturer], [Price]
    public static Product GetPro(int PartId,string databaseName)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        string sel = "SELECT PartName, Manufacturer, Price "
            + "FROM Parts "
            + "WHERE PartId = @PartId "
            + "ORDER BY PartId";
        SqlCommand cmd = new SqlCommand(sel, con);
        cmd.Parameters.AddWithValue("PartId", PartId);

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

    //Connecting String
    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings
            ["CarZoneDBInternet"].ConnectionString;
    }
}