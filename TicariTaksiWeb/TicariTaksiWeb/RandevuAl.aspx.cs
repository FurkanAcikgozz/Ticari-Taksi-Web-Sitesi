using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class RandevuAl : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnkayit_Click(object sender, EventArgs e)
    {
        

            string sorgu = "Insert into Randevu (randevuAd,randevuSoyad,randevuEmail, randevuTarih) Values (@randevuAd,@randevuSoyad,@randevuEmail, @randevuTarih)";

            SqlCommand cmd = new SqlCommand(sorgu, con);
            con.Open();

            try
            {
                cmd.Parameters.AddWithValue("@randevuAd", ad.Text);
                cmd.Parameters.AddWithValue("@randevuSoyad", soyad.Text);
                cmd.Parameters.AddWithValue("@randevuEmail", email.Text);
                cmd.Parameters.AddWithValue("@randevuTarih", sifre.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                label.Text = "Randevu Başarıyla Alındı...!";
            }
            catch (Exception)
            {
                label.Text = "Randevu Alınamadı...!";
                throw;
            }


        }
       
    }
