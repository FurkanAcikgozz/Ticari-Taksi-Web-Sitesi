using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnaSayfa : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
        /*
        string sorgu = "Select * from Duyurular order by Tarih";

        SqlCommand cmd = new SqlCommand(sorgu, con);
        con.Open();
        
        SqlDataReader dr = cmd.ExecuteReader();*/


        Object kullanici = Session["kullaniciadi"];
        Panel1.Visible = false;
        if (kullanici!=null)
        {
            pnlGiris.Visible = false;
            pnlKullanici.Visible = true;
            lblKullaniciAdi.Text = kullanici.ToString();
            Panel1.Visible = true;

        }
        else
        {
            pnlGiris.Visible = true;
            pnlKullanici.Visible = false;
        }
        try
        {
            lbl_toplamZiyaretci.Text += Application["toplamziyaretci"].ToString();
            lbl_OnlineZiyaretci.Text += Application["onlineziyaretci"].ToString();

        }
        catch (Exception)
        {

            throw;
        }
    }

    protected void btnKayit_Click(object sender, EventArgs e)
    {
        string sorgu = "select * from Kullanici where kullaniciEmail=@kullaniciEmail and kullaniciSifre=@kullaniciSifre";

        SqlCommand cmd = new SqlCommand(sorgu, con);
        con.Open();

        cmd.Parameters.AddWithValue("@kullaniciEmail", txtKullaniciAdi.Text);
        cmd.Parameters.AddWithValue("@kullaniciSifre", txtSifre.Text);
        cmd.ExecuteNonQuery();
        


        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session.Timeout = 300;
            Session.Add("KullaniciAdi", dr["kullaniciEmail"].ToString());
            Response.Redirect(Request.RawUrl);
            
        }
        else
        {
            label.Text = "Kullanıcı Girişi Sağlanmadı";
        }
       
    }

    protected void btnKaydol_Click(object sender, EventArgs e)
    {
        Response.Redirect("Kaydol.aspx");
       /* if (txtKullaniciAdi.Text != "" && txtSifre.Text != "")
        {

            string sorgu = "Insert into Kullanici (Email, Sifre) Values (@KullaniciAdi, @sifre)";

            SqlCommand cmd = new SqlCommand(sorgu, con);
            con.Open();

            try
            {
                cmd.Parameters.AddWithValue("@KullaniciAdi", txtKullaniciAdi.Text);
                cmd.Parameters.AddWithValue("@sifre", txtSifre.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                label.Text = "Kayıt Başarılı";
            }
            catch (Exception)
            {
                label.Text = "Kayıt Başarısız";
                throw;
            }


        }
        else
        {
            label.Text = "Boş Bırakılamaz";
        }*/
    }

    protected void btnCikis_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.RawUrl);
    }
}