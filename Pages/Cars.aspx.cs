using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Text;

public partial class Pages_Cars : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
    }
    private void FillPage()
    {
        ArrayList carModelList = new ArrayList();
         if(!IsPostBack)
         {
             carModelList = ConnectionDB.GetCarsByMake("%");
         }
         else
         {
             carModelList = ConnectionDB.GetCarsByMake(ddlCarMake.SelectedValue);
         }
      
        StringBuilder sb = new StringBuilder();

        foreach(CarModels carModel in carModelList)
        {
            sb.Append(string.Format(@"<table class='carTable'>
               <tr>
                    <th rowspan='6' width='150px'><img runat='server' src='{5}'/></th>
                    <th width='50px'>Model ID: </td>
                    <td>{0}</td>
                </tr>

                 <tr>
                    <th>Make ID:</th>
                    <td>{1}</td>
                </tr>

                 <tr>
                    <th>Name: </th>
                    <td>{2}</td>
                </tr>

                 <tr>
                    <th>Description: </th>
                    <td>{3}</td>
                </tr>

                 <tr>
                    <th>Price:</th>
                    <td>{4} £</td>
                </tr>

                 <tr>
                   
                    <td colspan ='2'>{5}</td>
                </tr>


             </table>", carModel.modelID, carModel.makeID, carModel.name, carModel.description, carModel.price, carModel.image));

            lblOutput.Text = sb.ToString();
        }
    }
    protected void ddlCarMake_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillPage();
    }
}