using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class AdminKullaniciEkle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    string kullaniciID = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        pnl_kullanici.Visible = false;
        pnl_KullaniciSil.Visible = false;

        con.Open();

        kullaniciID = Request.QueryString["kullaniciID"];
        islem = Request.QueryString["islem"];

        if (islem == "sil")
        {

            
            string sorgu2 = "delete from Kullanici where kullaniciID='" + kullaniciID + "'";

            SqlCommand cmd2 = new SqlCommand(sorgu2, con);
            

            cmd2.ExecuteNonQuery();

            string sorgu = "Select * from Kullanici ";


            SqlCommand cmd = new SqlCommand(sorgu, con);

            SqlDataReader dr = cmd.ExecuteReader();

            dL_kullaniciGetir.DataSource = dr;
            dL_kullaniciGetir.DataBind();

            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text != "" && TextBox4.Text != "")
        {
            con.Close();
            string sorgu = "Insert into Kullanici (kullaniciAdi,kullaniciSoyadi,kullaniciEmail, kullaniciSifre) Values (@kullaniciAdi,@kullaniciSoyadi,@kullaniciEmail, @kullaniciSifre)";

            SqlCommand cmd = new SqlCommand(sorgu, con);
            con.Open();

            try
            {
                cmd.Parameters.AddWithValue("@kullaniciAdi", TextBox1.Text);
                cmd.Parameters.AddWithValue("@kullaniciSoyadi", TextBox2.Text);
                cmd.Parameters.AddWithValue("@kullaniciEmail", TextBox3.Text);
                cmd.Parameters.AddWithValue("@kullaniciSifre", TextBox4.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("AdminKullaniciEkle.aspx");
            }
            catch (Exception)
            {
                Label1.Text = "Kullanıcı Ekleme Başarısız";
                throw;
            }


        }
        else
        {
            Label1.Text = "Boş Bırakılamaz";
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        pnl_kullanici.Visible = false;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        pnl_kullanici.Visible = true ;

    }

    protected void btn_KullaniciEksi_Click(object sender, EventArgs e)
    {
        pnl_KullaniciSil.Visible = false;

    }

    protected void btn_KullaniciArti_Click(object sender, EventArgs e)
    {
        pnl_KullaniciSil.Visible = true;

    }
}