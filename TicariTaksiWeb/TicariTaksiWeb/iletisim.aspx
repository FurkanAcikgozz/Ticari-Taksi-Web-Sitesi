<%@ Page Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="~/iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 96px;
            height: 30px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
<br /><h1>&ensp;İLETİŞİM BÖLÜMÜ</h1>

&ensp;&ensp;&ensp;E - Mail (Outlook) = <A href="mailto:acikgozfurkaan@gmail.com"> Yönlendir </A>
<br>
&ensp;&ensp;&ensp;E - Mail Adresimi Görüntülemek İçin Tıklayın =
<input type="button" onclick="alert('DiclekentTaksiDuragi@gmail.com')" value="E - Mail" class="auto-style1" style="background-color: #CCFFFF">
<br>	
    &ensp;&ensp;&ensp;<asp:Label ID="Label1" ForeColor="Maroon" runat="server" Text="Admine Mesaj Gönder" Font-Bold="True" Font-Italic="True"></asp:Label>&ensp;&ensp;&ensp;
    <asp:Button ID="Button1" runat="server" Text="Tıkla" OnClick="Button1_Click" Height="31px" Width="80px" BackColor="#CCFFCC"/>
    

	

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1248.689493219536!2d40.18030908967887!3d37.94209943615744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40751e4a98e41967%3A0xc5089d795e166a64!2sDiclekent%20Taksi!5e0!3m2!1str!2str!4v1622110357125!5m2!1str!2str" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</asp:Content>

