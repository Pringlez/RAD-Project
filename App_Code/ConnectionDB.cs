using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

/// <summary>
/// Summary description for ConnectionDB
/// </summary>
public class ConnectionDB
{
    private static SqlConnection conn;
    private static SqlCommand command;

	static ConnectionDB()
	{
        string connectionString = ConfigurationManager.ConnectionStrings["CarZoneDatabaseConnectionString"].ToString();
        conn = new SqlConnection(connectionString);
        command = new SqlCommand("",conn);
	}
    public static ArrayList GetCarsByMake(string carModel)
    {
        ArrayList list = new ArrayList();
        string query = string.Format("SELECT * FROM CarModels WHERE ModelID LIKE '{0}'", carModel);

        try
        {
            conn.Open();
            command.CommandText = query;
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                string modelId = reader.GetString(0);
                string makeId = reader.GetString(1);
                string name = reader.GetString(2);
                string description = reader.GetString(3);
                decimal price = reader.GetDecimal(4);
                string image = reader.GetString(5);

                CarModels carMod = new CarModels(modelId, makeId, name, description, price, image);
                list.Add(carMod);
            }//while
           

        }
        finally
        {
            conn.Close();
        }

        return list;


    }
}