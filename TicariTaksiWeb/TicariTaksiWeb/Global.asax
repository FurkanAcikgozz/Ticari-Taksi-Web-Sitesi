<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Uygulama başlangıcında çalışan kod
        Application.Add("toplamziyaretci",0);
        Application.Add("onlineziyaretci",0);


    }

    void Application_End(object sender, EventArgs e)
    {
        // Uygulama kapanışında çalışan kod

    }

    void Application_Error(object sender, EventArgs e)
    {
        // İşlenmemiş bir hata oluştuğunda çalışan kod

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Yeni bir oturum başlatıldığında çalışan kod
        Random rnd = new Random();
        Application["toplamziyaretci"] = Convert.ToInt32(Application["toplamziyaretci"]) + rnd.Next(5,10);
        Application["onlineziyaretci"] = Convert.ToInt32(Application["onlineziyaretci"]) + 1;
    }

    void Session_End(object sender, EventArgs e)
    {
        // Oturum bittiğinde çalışan kod
        // Not: Session_End olayı yalnızca sessionstate modu
        // Web.config dosyasında InProc olarak ayarlandığında başlatılır. Oturum modu StateServer 
        // veya SQLServer olarak ayarlanırsa, olay başlatılmaz.
        Application["onlineziyaretci"] = Convert.ToInt32(Application["onlineziyaretci"]) - 1;

    }

</script>
