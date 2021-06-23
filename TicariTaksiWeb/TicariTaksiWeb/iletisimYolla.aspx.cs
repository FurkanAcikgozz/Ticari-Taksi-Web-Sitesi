using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iletisimYolla : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnkayit_Click(object sender, EventArgs e)
    {
        con.Open();
        string sorgu = "insert into Iletisim (iletisimAdSoyad,iletisimEmail,iletisimIcerik) Values (@iletisimAdSoyad,@iletisimEmail,@iletisimIcerik)";
        SqlCommand cmd = new SqlCommand(sorgu, con);

        try
        {
            cmd.Parameters.AddWithValue("@iletisimAdSoyad", ad.Text);
            cmd.Parameters.AddWithValue("@iletisimEmail", email.Text);
            cmd.Parameters.AddWithValue("@iletisimIcerik", mesaj.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Mesaj Gönderildi...!";
        }
        catch (Exception)
        {
            Label1.Text = "Mesaj Gönderilmedi...!";
            throw;
        }

    }
}