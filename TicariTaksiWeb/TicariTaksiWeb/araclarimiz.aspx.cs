using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class araclarimiz : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        string sorgu = "Select * from Araclar";
        SqlCommand cmd = new SqlCommand(sorgu, con);

        SqlDataReader dr = cmd.ExecuteReader();
      //  dl_sliderArac.DataSource = dr;
      //  dl_sliderArac.DataBind();
        con.Close();
    }
}