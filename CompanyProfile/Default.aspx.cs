using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace CompanyProfile
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection();
            SqlCommand command = new SqlCommand();
            SqlDataReader dataReader;

            connection.ConnectionString = "Data Source=DESKTOP-LI67OBL\\SQLEXPRESS;Initial Catalog=CompanyProfile;Integrated Security=True";




            connection.Open();
            command.Connection = connection;
            command.CommandText = "select * from Recuritment where status=1";

            dataReader = command.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(dataReader);
            connection.Close();

            String s = "";
            for (int x=0;x<tbl.Rows.Count;x++) {
                s = s + "<div class='col-md-4'><h2> Name of Post : " + tbl.Rows[x]["Designation"]+"</h2>";
                s = s + "<h3> Vaccancies= " + tbl.Rows[x]["NoofSeats"] + "</h3>";
                s = s + "</div>";
            }
            data.InnerHtml = s;




        }
    }
}