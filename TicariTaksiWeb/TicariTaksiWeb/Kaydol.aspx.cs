using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Kaydol : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnkayit_Click(object sender, EventArgs e)
    {
         if (email.Text != "" && sifre.Text != "")
        {

            string sorgu = "Insert into Kullanici (kullaniciAdi,kullaniciSoyadi,kullaniciEmail, kullaniciSifre) Values (@kullaniciAdi,@kullaniciSoyadi,@kullaniciEmail, @kullaniciSifre)";

            SqlCommand cmd = new SqlCommand(sorgu, con);
            con.Open();

            try
            {
                cmd.Parameters.AddWithValue("@kullaniciAdi", ad.Text);
                cmd.Parameters.AddWithValue("@kullaniciSoyadi", soyad.Text);
                cmd.Parameters.AddWithValue("@kullaniciEmail", email.Text);
                cmd.Parameters.AddWithValue("@kullaniciSifre", sifre.Text);

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
        }
    }
}