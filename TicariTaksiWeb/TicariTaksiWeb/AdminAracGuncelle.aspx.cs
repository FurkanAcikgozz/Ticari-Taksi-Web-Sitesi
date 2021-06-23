using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class AdminAracGuncelle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    string aracID = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        aracID = Request.QueryString["aracID"];
        if (Page.IsPostBack==false)
        {
            string sorgu = "select * from Araclar where aracID='" + aracID + "'";
            SqlCommand cmd = new SqlCommand(sorgu, con);
            SqlDataReader drGuncelle = cmd.ExecuteReader();

            DataTable dtguncelle = new DataTable("tablo");
            dtguncelle.Load(drGuncelle);

            DataRow row = dtguncelle.Rows[0];
            txt_aracPlakaGuncelle.Text =row["aracPlakasi"].ToString();
            txt_aracMarkaGuncelle.Text =row["aracMarkasi"].ToString();
            txt_aracSoforAdiGuncelle.Text =row["aracSoforAdi"].ToString();
            



        }
    }

    protected void btn_aracGuncelle_Click(object sender, EventArgs e)
    {
        if (fu_aracResmiGuncelle.HasFile)
        {
            fu_aracResmiGuncelle.SaveAs(Server.MapPath("/Resimler/"+fu_aracResmiGuncelle.FileName));

            SqlCommand cmdguncelle = new SqlCommand("Update Araclar Set aracPlakasi='"+txt_aracPlakaGuncelle.Text+"', aracMarkasi='"+txt_aracMarkaGuncelle.Text+"', aracSoforAdi='"+txt_aracSoforAdiGuncelle.Text+"', aracResim='/Resimler/"+fu_aracResmiGuncelle.FileName+"' where aracID='"+aracID+"'",con);

           
            try
            {
                cmdguncelle.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminAracEkle.aspx");
            }
            catch (Exception)
            {
                Label1.Text = "Kayıt Başarısız...!";
                con.Close();

                throw;
            }

            
        }
        else
        {
            SqlCommand cmdguncelle = new SqlCommand("Update Araclar Set aracPlakasi='" + txt_aracPlakaGuncelle.Text + "', aracMarkasi='" + txt_aracMarkaGuncelle.Text + "', aracSoforAdi='" + txt_aracSoforAdiGuncelle.Text  + "' where aracID='" + aracID + "'", con);
            try
            {
                cmdguncelle.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminAracEkle.aspx");
            }
            catch (Exception)
            {
                Label1.Text = "Kayıt Başarısız...!";
                con.Close();
                throw;
            }

        }
    }
}