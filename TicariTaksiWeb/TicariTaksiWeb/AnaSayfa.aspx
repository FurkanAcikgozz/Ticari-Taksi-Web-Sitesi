<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Diclekent Taksi Durağı</title>
    <link href="MainMasterStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


    <script src="sliderJS/jquery.js"></script>
    <script src="sliderJS/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderJS/amazingslider-1.css"/>
    <script src="sliderJS/initslider-1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
        <div class="navbar">
            <div class="logo">

                <a href="Resimler/GirisLogo.jpg">
                    <!----<marquee behavior="alternate"><marquee width="300"><font color="white">Diclekent Taksi Durağı</font></marquee></marquee>-->
                    <marquee behavior=alternate direction=up scrollamount=3 scrolldelay=25 height=50 style="Text-align;filter:wave(add=0,phase=1, freq=1,strength=15,color=.FFFFFF)" mce_style="Text-align;filter:wave(add=0,phase=1, freq=1,strength=15,color=.FFFFFF)">Diclekent Taksi Durağı</></marquee>

                </a>

            </div>
            <ul>
                <li><a href="GirisSayfasi.html" class="active"><i class="fas fa-home"></i> Giriş Sayfası</a> </li>
                <li>
                    <a href="#"> <i class="fas fa-info-circle"></i> Hakkımızda</a>
                    <div class="sub-menu-1">
                        <ul>
                            <li><a href="misyonumuz.aspx">Misyonumuz</a></li>
                            <li><a href="vizyonumuz.aspx">Vizyonumuz</a></li>
                            
                           
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#"> <i class="fas fa-briefcase"></i> Hizmetler</a>
                    <div class="sub-menu-1">
                        <ul>
                            <asp:Panel ID="Panel1" runat="server">
                            <li><a href="RandevuAl.aspx">Randevu Al</a></li></asp:Panel>
                            <li><a href="#">Değerlendir</a></li>
                            <li><a href="Degerlendir.aspx">Fiyatlandırma</a></li>
                            
                        </ul>
                    </div>
                </li>
                <li><a href="araclarimiz.aspx"> <i class="fas fa-car"></i> Araçlarımız</a> </li>
                <li><a href="iletisim.aspx"> <i class="fas fa-phone"></i> İletişim</a> </li>
            </ul>
        </div>
            

             <div class="banner">
               <!-- <span style="COLOR: #580b0b"></span>Banner -->
                 
             </div>

             <div class="sol-taraf">
                 
                 <div class="hizli-kayit">
                   <asp:Panel runat="server" ID="pnlGiris"> 
                     <div class="ust">
                        <span style="COLOR: #8b1717"><h2> Giriş Yap</h2></span>
                     </div>

                     <div class="alt">
                   
                         <b><span> Kullanıcı Adı</span></b>
                         <asp:TextBox ID="txtKullaniciAdi" CssClass="textbox" runat="server" />
                       
                         <b><span> Şifre</span></b>
                         <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" TextMode="Password"/>
                         
                         <asp:Button ID="btnKayit" CssClass="btnKayit" Text="Giriş Yap" runat="server" OnClick="btnKayit_Click"/>
                        <asp:Button ID="btnKaydol" CssClass="btnKaydol" Text="Kayıt Ol" runat="server" OnClick="btnKaydol_Click"/>
                        <!-- <a href="KaydolPanel.html" class="btnKaydol">Kayıt Ol</a>-->
                       <br />  <asp:Label ID="label" CssClass="label" runat="server" Text=" " />
                        
                         
                     </div>
                  </asp:Panel>
                     <asp:Panel ID="pnlKullanici" runat="server">
                         Hoşgeldiniz, <asp:Label ID="lblKullaniciAdi" Text="text" runat="server" />
                         <asp:Button ID="btnCikis" CssClass="btnCikis" Text="Çıkış" runat="server" OnClick="btnCikis_Click" />
                     </asp:Panel>
                 </div>

                 <div class="duyurular">

                     <div class="ust">
                        <span style="COLOR: #8b1717"><h3>Duyurular</h3></span> 
                     </div>

                     <div class="alt">
                         
                          <div class="duyuru-wrap">
                              <!--<asp:Label Text="Başlık" runat="server" /><br />
                              <asp:Label Text="Duyurumuz" runat="server" /><br />
                              <asp:Label Text="Tarih" runat="server" /><br />-->
                             <b>1.Duyuru</b>  <br />
                              Sokağa çıkma kısıtlamasında 7/24 çalışmaktayız.<br />
                              2021-05-26 00:00:00.000<br />
                              <b>2.Duyuru</b> <br />
                              Tarifelerimiz bulunmakta ve indirimlidir. <br/>
                              2021-05-26 00:01:00.000<br />
                               <b>3.Duyuru</b> <br />
                              Randevu Almak İçin Giriş Yapınız.<br />
                              2021-05-26 01:01:00.000<br />

                          </div>
                     </div>

                 </div>

             </div>

             <div class="icerik">
                 <br /> 
                  <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:900px;margin:0px auto 56px; ">
        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <li><img src="images/DiclekentTaksiDuragi.jpg" alt="Diclekent Taksi Durağı"  title="Diclekent Taksi Durağı" />
                </li>
                <li><img src="images/DiclekentTaksiDuragi1.jpg" alt="Diclekent Taksi Durağı"  title="Diclekent Taksi Durağı" />
                </li>
                <li><img src="images/DiclekentTaksiDuragi2.jpg" alt="Diclekent Taksi Durağı"  title="Diclekent Taksi Durağı" />
                </li>
                <li><img src="images/DiclekentTaksiDuragi3.jpg" alt="Diclekent Taksi Durağı"  title="Diclekent Taksi Durağı" />
                </li>
                <li><img src="images/DiclekentTaksiDuragi4.jpg" alt="Diclekent Taksi Durağı"  title="Diclekent Taksi Durağı" />
                </li>
                <li><img src="images/DiclekentTaksiDuragi5.jpg" alt="Diclekent Taksi Durağı"  title="Diclekent Taksi Durağı" />
                </li>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="images/DiclekentTaksiDuragi-tn.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="images/DiclekentTaksiDuragi1-tn.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="images/DiclekentTaksiDuragi2-tn.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="images/DiclekentTaksiDuragi3-tn.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="images/DiclekentTaksiDuragi4-tn.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
                <li><img src="images/DiclekentTaksiDuragi5-tn.jpg" alt="Diclekent Taksi Durağı" title="Diclekent Taksi Durağı" /></li>
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive jQuery Slider">Responsive jQuery Slider</a></div>
        </div>
    </div>
                <div class="ziyaretci" style="text-align: right"> 
                    <br /><br /><br /><br /><br /><br /> <b> <span style="font-size:20px;"> 
                    <asp:Label ID="lbl_toplamZiyaretci" CssClass="lbltoplamziyaretci" runat="server" Text="Toplam Ziyaretçi: "></asp:Label>
                    <br /><asp:Label ID="lbl_OnlineZiyaretci" CssClass="lbltoplamziyaretci" runat="server" Text="Online Ziyaretçi: "></asp:Label></span></b>
                </div>
                

             </div>
             
             <div class="footer">
                 Bir Furkan Açıkgöz Tasarımıdır © 2021.
             </div>
  

    </div>
    </form>
</body>
</html>
