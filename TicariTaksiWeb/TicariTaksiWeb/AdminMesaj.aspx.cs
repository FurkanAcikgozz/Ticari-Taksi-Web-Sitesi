using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMesaj : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    string iletisimID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        iletisimID = Request.QueryString["iletisimID"];
        islem = Request.QueryString["islem"];

        if (islem=="sil")
        {
            SqlCommand cmdsil = new SqlCommand("delete from Iletisim where iletisimID='"+iletisimID+"'",con);
            cmdsil.ExecuteNonQuery();

            Response.Redirect("adminMesaj.aspx");
        }

        if (Page.IsPostBack==false)
        {
            pnl_mesaj.Visible = false;
        }
        SqlCommand cmd = new SqlCommand("Select * from Iletisim",con);
        SqlDataReader dr = cmd.ExecuteReader();

        DataList1.DataSource = dr;
        DataList1.DataBind();
        con.Close();

    }

    protected void btn_maArti_Click(object sender, EventArgs e)
    {
        pnl_mesaj.Visible = true;

    }

    protected void btn_maEksi_Click(object sender, EventArgs e)
    {
        pnl_mesaj.Visible = false;

    }
}