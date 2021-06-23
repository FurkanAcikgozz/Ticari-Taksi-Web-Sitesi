<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iletisimYolla.aspx.cs" Inherits="iletisimYolla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="KaydolStyle.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-top: .4em;
            display: flex;
            justify-content: center;
            color: red;
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2><span style="COLOR: white">İletişim Formu</span></h2>
        <div class="signup">
        <span>Ad - Soyad </span><br />
        <asp:TextBox ID="ad" CssClass="textbox" runat="server" style="margin-left: 0" Width="170px" /><br />
        <span>E-mail</span><br />
        <asp:TextBox ID="email" CssClass="textbox" runat="server" Width="170px"/><br />
        <span>Mesaj</span>
        <asp:TextBox ID="mesaj" placeHolder="Buraya Mesajınızı Yazınız.." CssClass="textbox" runat="server" Height="80px" style="margin-bottom: 0" Width="170px" /><br />

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <div class="subutton">
            <asp:Button ID="btnkayit" CssClass="auto-style1" Text="Gönder" runat="server" OnClick="btnkayit_Click" Height="58px" Width="175px"  />


        </div>
           

    </div>
    </form>
</body>
</html>
