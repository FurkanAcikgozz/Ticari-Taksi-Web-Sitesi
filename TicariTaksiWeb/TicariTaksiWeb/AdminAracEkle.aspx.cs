using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAracEkle : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
    string aracID = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        aracID = Request.QueryString["aracID"];
        islem = Request.QueryString["islem"];

        if (islem=="sil")
        {
           
            //string sorgu2 = "delete * from Araclar where aracID='"+aracID+"'";
            string sorgu2 = "delete from Araclar where aracID='"+aracID+"'";

            SqlCommand cmd2 = new SqlCommand(sorgu2, con);
            //cmd2.Parameters.AddWithValue("@aracID", aracID);

            cmd2.ExecuteNonQuery();
         
        }

        if (Page.IsPostBack==false)
        {
            pnl_arac.Visible = false;
            pnl_AracDuzenle.Visible = false;
        }

        string sorgu = "Select * from Araclar";


        SqlCommand cmd = new SqlCommand(sorgu, con);
       
        SqlDataReader dr = cmd.ExecuteReader();

        dL_araclariGetir.DataSource = dr;
        dL_araclariGetir.DataBind();

        con.Close();


    }

    protected void btn_aeArti_Click(object sender, EventArgs e)
    {
        pnl_arac.Visible = true;
    }

    protected void btn_aeEksi_Click(object sender, EventArgs e)
    {
        pnl_arac.Visible = false;
    }

    protected void btn_aracEkle_Click(object sender, EventArgs e)
    {
        

        if (fu_AracResim.HasFile)
        {
            fu_AracResim.SaveAs(Server.MapPath("/Resimler/" + fu_AracResim.FileName));
            string sorgu = "Insert into Araclar (aracPlakasi,aracMarkasi,aracSoforAdi, aracResim) Values (@aracPlakasi,@aracMarkasi,@aracSoforAdi, @aracResim)";


            SqlCommand cmd = new SqlCommand(sorgu, con);
            con.Open();

            try
            {
                cmd.Parameters.AddWithValue("@aracPlakasi", txt_aracPlakasi.Text);
                cmd.Parameters.AddWithValue("@aracMarkasi", txt_aracMarkasi.Text);
                cmd.Parameters.AddWithValue("@aracSoforAdi", txt_aracSoforAdi.Text);
                cmd.Parameters.AddWithValue("@aracResim", "/Resim/"+ fu_AracResim.FileName);
                cmd.ExecuteNonQuery();
                con.Close();

                Label1.Text = "Ekleme Başarılı...!";
                Response.Redirect("AdminAracEkle.aspx");
            }
            catch (Exception)
            {
                Label1.Text = "Kayıt Başarısız...!";

                throw;
            }
        }
        else
        {
            Label1.Text = "Boş Bırakılamaz...!";
        }
        
    }

    protected void btn_AracDuzenleArti_Click(object sender, EventArgs e)
    {
        pnl_AracDuzenle.Visible = true;

    }

    protected void btn_AracDuzenleEksi_Click(object sender, EventArgs e)
    {
        pnl_AracDuzenle.Visible =false;
    }
}