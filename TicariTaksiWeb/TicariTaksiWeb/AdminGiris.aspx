<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGiris.aspx.cs" Inherits="AdminGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin Girişi</title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
            border:0;
        }
    </style>
</head>
<body style="background-color:#e1e1e1">
    <form id="form1" runat="server">
        <div style="height:50px; background-color:#2a595c; color:#fff">
            <div style="float:left; width:290px; margin-top:15px;">Kullanıcı Adı: <asp:TextBox ID="txtKullaniciAdi" runat="server" Height="25px" Width="160px"></asp:TextBox>&nbsp;</div>
            <div style="float:left; width:250px;margin-top:15px;">Şifre: <asp:TextBox ID="txtSifre" runat="server" Height="25px" TextMode="Password" Width="160px"></asp:TextBox> </div>
            <div style="float:left; width:850px;margin-top:15px;"> 
                <asp:Button ID="btnGiris" runat="server" Text="Giriş" Height="25px" Width="108px" BackColor="White" ForeColor="#2a595c" OnClick="btnGiris_Click"/>
           

            <div style="float:right;width:200px; margin-top:3px; text-align:right;">
                <asp:Label ID="lbl_bilgi" runat="server" Text="Yönetici Paneli" ForeColor="White"></asp:Label>
            </div>
                 

            </div>

                

        </div>
    </form>
</body>
</html>
