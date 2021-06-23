using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminRandevu : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    string randevuID = "";
    string islem = "";
    string islem2 = "";
    string islem3 = "";



    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        randevuID = Request.QueryString["randevuID"];
        islem = Request.QueryString["islem"];
        islem2 = Request.QueryString["islem2"];
        islem3 = Request.QueryString["islem3"];



        if (islem == "sil")
        {

            
            string sorgu2 = "delete from Randevu where randevuID='" + randevuID + "'";

            SqlCommand cmd2 = new SqlCommand(sorgu2, con);
       

            cmd2.ExecuteNonQuery();
            

        }

        if (islem2 == "sil2")
        {


            string sorgu3 = "delete from Randevu where randevuID='" + randevuID + "'";

            SqlCommand cmd2 = new SqlCommand(sorgu3, con);
           

            cmd2.ExecuteNonQuery();


        }
        if (islem3 == "update")
        {

            string randevuOnay = "True";
            string sorgu3 = "Update Randevu Set randevuOnay='" + randevuOnay + "' where randevuID='" + randevuID + "'";

            SqlCommand cmd2 = new SqlCommand(sorgu3, con);
           


            cmd2.ExecuteNonQuery();


        }

        if (Page.IsPostBack == false)
        {
            pnl_randevu.Visible = false;
            Panel1.Visible = false;

        }

        
        SqlCommand cmd = new SqlCommand("Select * from Randevu where randevuOnay=0", con);
        SqlDataReader dr = cmd.ExecuteReader();

        DataList1.DataSource = dr;
        DataList1.DataBind();
        con.Close();

        con.Open();
        SqlCommand cmdonayli = new SqlCommand("Select * from Randevu where randevuOnay=1", con);
        SqlDataReader drOnayli = cmdonayli.ExecuteReader();


        DataList2.DataSource = drOnayli;
        DataList2.DataBind();


        con.Close();

    }

    protected void btn_raArti_Click(object sender, EventArgs e)
    {
        pnl_randevu.Visible = true;

    }

    protected void btn_raEksi_Click(object sender, EventArgs e)
    {
        pnl_randevu.Visible = false;

    }

    protected void btn_onayliArti_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }

    protected void btn_onayliEksi_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;

    }
}