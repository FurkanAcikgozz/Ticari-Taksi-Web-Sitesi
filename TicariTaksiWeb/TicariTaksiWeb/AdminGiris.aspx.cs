using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class AdminGiris : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Close();
    }

    protected void btnGiris_Click(object sender, EventArgs e)
    {
        string sorgu = "select * from Yonetici where yoneticiKullaniciAdi=@yoneticiKullaniciAdi and yoneticiSifre=@yoneticiSifre";

        SqlCommand cmd = new SqlCommand(sorgu, con);
        con.Open();

        cmd.Parameters.AddWithValue("@yoneticiKullaniciAdi", txtKullaniciAdi.Text);
        cmd.Parameters.AddWithValue("@yoneticiSifre", txtSifre.Text);
        cmd.ExecuteNonQuery();



        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            //Session.Timeout = 300;
            //Session.Add("KullaniciAdi", dr["Email"].ToString());
            //Response.Redirect(Request.RawUrl);
            Response.Redirect("~/AdminnPanel.aspx");
        }
        else
        {
            lbl_bilgi.Text = "Hatalı Giriş Yaptınız...!";
        }
    }
}