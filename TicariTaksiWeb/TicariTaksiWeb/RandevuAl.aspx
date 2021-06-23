<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RandevuAl.aspx.cs" Inherits="RandevuAl" %>

<!DOCTYPE html>
<link href="RandevuStylee.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <h2><span style="COLOR: white">Randevu Al</span></h2>
        <div class="signup">
        <span>Ad - Soyad:</span><br />
        <asp:TextBox ID="ad" CssClass="textbox" runat="server" /><br />
            <span>Telefon:</span>
        <asp:TextBox ID="soyad" CssClass="textbox" runat="server"  /><br />
        <span>E-Mail:</span><br />
        <asp:TextBox ID="email" CssClass="textbox" runat="server"  /><br />
        <span>Tarih ve Saat:</span><br />
        <asp:TextBox ID="sifre" CssClass="textbox" runat="server" /><br />
        <span>Adres:</span><br />
        <asp:TextBox ID="adres" CssClass="adres" runat="server" /><br />
        <asp:Label ID="label" runat="server" Text=""></asp:Label>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Doğru E-mail Yazınız" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <div class="subutton">
            <asp:Button ID="btnkayit" CssClass="subutton" Text="Randevu Al" runat="server" OnClick="btnkayit_Click"  />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Geçerli Telefon Numarası Giriniz" ValidationExpression="(05(\d{9}))" ControlToValidate="soyad"></asp:RegularExpressionValidator>

        </div>
    </div>
    </form>
</body>
</html>
