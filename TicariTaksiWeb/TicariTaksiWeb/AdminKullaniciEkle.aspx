<%@ Page Language="C#" MasterPageFile="~/adminn.master" AutoEventWireup="true" CodeFile="~/AdminKullaniciEkle.aspx.cs" Inherits="AdminKullaniciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style7 {
        width: 203px;
    }
        .auto-style8 {
            width: 203px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style10 {
            width: 203px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 46px;
            height: 23px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

       <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder; "> &nbsp;<asp:Button ID="Button2" runat="server" Height="19px" Text="+" Width="31px" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Height="18px" OnClick="Button3_Click" Text="-" Width="28px" />
           Kullanici Ekleme Paneli</div>

       <asp:Panel ID="pnl_kullanici" runat="server">
           <table class="auto-style1">
               <tr>
                   <td class="auto-style7" style="background-color: #669999">&nbsp;</td>
                   <td style="background-color: #669999">&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style7" style="background-color: #669999; font-weight: bold;">Kullanıcı Adı:</td>
                   <td style="background-color: #669999">
                       <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style7" style="background-color: #669999; font-weight: bold;">Kullanıcı Soyadı:</td>
                   <td style="background-color: #669999">
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style10" style="background-color: #669999; font-weight: bold;">Kullanıcı E-Mail:</td>
                   <td class="auto-style11" style="background-color: #669999">
                       <asp:TextBox ID="TextBox3" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style8" style="background-color: #669999; font-weight: bold;">Kullanıcı Şifre:</td>
                   <td class="auto-style9" style="background-color: #669999">
                       <asp:TextBox ID="TextBox4" runat="server" CssClass="textboxGorsel" TextMode="Password"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style7" style="background-color: #669999">&nbsp;</td>
                   <td style="background-color: #669999">
                       <asp:Button ID="Button1" runat="server" Text="Ekle" BackColor="#2A595A" ForeColor="White" Height="38px" OnClick="Button1_Click" Width="76px" />
                       <asp:Label ID="Label1" runat="server"></asp:Label>
                   </td>
               </tr>
           </table>

       </asp:Panel>


         <div style="height:30px"></div>
            <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder; "> &nbsp;<asp:Button ID="btn_KullaniciArti" runat="server" Height="20px"  Text="+" Width="35px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" OnClick="btn_KullaniciArti_Click" />
            &nbsp;<asp:Button ID="btn_KullaniciEksi" runat="server" Height="20px" Text="-" Width="35px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" OnClick="btn_KullaniciEksi_Click" />
                Kullanıcı Silme Paneli</div>

       <asp:Panel ID="pnl_KullaniciSil" runat="server" BackColor="#669999" ForeColor="White">
           <asp:DataList ID="dL_kullaniciGetir" runat="server" Width="700px">
               <HeaderTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style8">Kategori Adı</td>
                           
                           <td>&nbsp;&nbsp;&nbsp; Sil</td>
                       </tr>
                   </table>
               </HeaderTemplate>
               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style8">
                               <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kullaniciEmail") %>'></asp:Literal>
                           </td>
                           
                           <td>
                               <a href="AdminKullaniciEkle.aspx?kullaniciID=<%#Eval("kullaniciID") %> &islem=sil"> <img alt="" class="auto-style12" src="Resimler/remove.png" /></a>
                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>

       </asp:Panel>


   </div>
</asp:Content>

