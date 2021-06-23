<%@ Page Language="C#" MasterPageFile="~/adminn.master" AutoEventWireup="true" CodeFile="~/AdminAracEkle.aspx.cs" Inherits="AdminAracEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            width: 472px;
        }
        .auto-style9 {
            width: 102px;
        }
        .auto-style10 {
            width: 50px;
            height: 50px;
            margin-left: 0;
        }
        .auto-style11 {
            width: 50px;
            height: 50px;
        }
        .auto-style12 {
            width: 170px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
       <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder; "> &nbsp;<asp:Button ID="btn_aeArti" runat="server" Height="20px" OnClick="btn_aeArti_Click" Text="+" Width="35px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
&nbsp;<asp:Button ID="btn_aeEksi" runat="server" Height="20px" OnClick="btn_aeEksi_Click" Text="-" Width="35px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
           Araç Ekleme Paneli</div>

       <asp:Panel ID="pnl_arac" runat="server" BackColor="#669999" ForeColor="White">
           <table class="auto-style1">
               <tr>
                   <td class="auto-style12">&nbsp;</td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style12" style="text-align: right">Araç Plakası:</td>
                   <td>
                       <asp:TextBox ID="txt_aracPlakasi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style12" style="text-align: right">Araç Markası:</td>
                   <td>
                       <asp:TextBox ID="txt_aracMarkasi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style12" style="text-align: right">Araç Şoför Adı:</td>
                   <td>
                       <asp:TextBox ID="txt_aracSoforAdi" runat="server" CssClass="textboxGorsel" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style12" style="text-align: right">Araç Resmi:</td>
                   <td>
                       <asp:FileUpload ID="fu_AracResim" runat="server" CssClass="textboxGorsel" Width="300px" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style12">&nbsp;</td>
                   <td>
                       <asp:Button ID="btn_aracEkle" runat="server" Text="Ekle" CssClass="buttonGorsel" OnClick="btn_aracEkle_Click" />
                      &nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text=""></asp:Label>
                   </td>
               </tr>
           </table>

       </asp:Panel>

        <div style="height:30px"></div>
            <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder; "> &nbsp;<asp:Button ID="btn_AracDuzenleArti" runat="server" Height="20px"  Text="+" Width="35px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" OnClick="btn_AracDuzenleArti_Click" />
            &nbsp;<asp:Button ID="btn_AracDuzenleEksi" runat="server" Height="20px" Text="-" Width="35px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" OnClick="btn_AracDuzenleEksi_Click" />
                Araç Güncelleme ve Silme Paneli</div>

       <asp:Panel ID="pnl_AracDuzenle" runat="server" BackColor="#669999" ForeColor="White">
           <asp:DataList ID="dL_araclariGetir" runat="server" Width="700px">
               <HeaderTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style8">Kategori Adı</td>
                           <td class="auto-style9">Güncelle</td>
                           <td>&nbsp;&nbsp;&nbsp; Sil</td>
                       </tr>
                   </table>
               </HeaderTemplate>
               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td class="auto-style8">
                               <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("aracPlakasi") %>'></asp:Literal>
                           </td>
                           <td class="auto-style9">
                               <a href="AdminAracGuncelle.aspx?aracID=<%#Eval("aracID") %> "><img alt="" class="auto-style11" src="Resimler/reuse.png" /></a>
                           </td>
                           <td>
                               <a href="AdminAracEkle.aspx?aracID=<%#Eval("aracID") %> &islem=sil"> <img alt="" class="auto-style10" src="Resimler/remove.png" /></a>
                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>

       </asp:Panel>
        <div style="height:30px;"></div>
   </div>
</asp:Content>

