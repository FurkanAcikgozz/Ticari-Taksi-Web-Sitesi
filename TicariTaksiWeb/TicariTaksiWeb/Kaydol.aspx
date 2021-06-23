<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kaydol.aspx.cs" Inherits="Kaydol" %>

<!DOCTYPE html>
<link href="KaydolStyle.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2><span style="COLOR: white">Kayıt Formu</span></h2>
        <div class="signup">
        <span>Adınız:</span><br />
        <asp:TextBox ID="ad" CssClass="textbox" runat="server" /><br />
        <span>Soyadınız:</span>
        <asp:TextBox ID="soyad" CssClass="textbox" runat="server" /><br />
        <span>Email:</span><br />
        <asp:TextBox ID="email" CssClass="textbox" runat="server" /><br />
        <span>Şifre:</span><br />
        <asp:TextBox ID="sifre" CssClass="textbox" runat="server" TextMode="Password"/><br />
        <asp:Label ID="label" runat="server" Text=""></asp:Label>

        <div class="subutton">
            <asp:Button ID="btnkayit" CssClass="subutton" Text="kaydol" runat="server" OnClick="btnkayit_Click"  />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Geçerli Mail Adresi Giriniz...!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        </div>
    </div>
    </form>
</body>
</html>
