<%@ Page Language="C#" MasterPageFile="~/adminn.master" AutoEventWireup="true" CodeFile="~/AdminMesaj.aspx.cs" Inherits="AdminMesaj" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 512px;
            height: 512px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       <div style="height:25px; background-color:#2a595a; color:#fff; font-weight:bolder; "> 
           &nbsp;<asp:Button ID="btn_maArti" runat="server" Height="25px" OnClick="btn_maArti_Click" Text="+" Width="25px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
           &nbsp;<asp:Button ID="btn_maEksi" runat="server" Height="25px" OnClick="btn_maEksi_Click" Text="-" Width="25px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />

           Mesaj Paneli</div>

       <asp:Panel ID="pnl_mesaj" runat="server" BackColor="#669999" ForeColor="White">
           <asp:DataList ID="DataList1" runat="server" Width="700px">
               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td style="width: 200px">
                               <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Maroon" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Label>
                           </td>
                           <td style="width: 200px">
                               <asp:Label ID="Label2" runat="server" Font-Size="18px" Text='<%# Eval("iletisimEmail") %>'></asp:Label>
                           </td>
                           <td style="width: 200px">
                               <asp:Label ID="Label3" runat="server" Font-Size="18px" Text='<%# Eval("iletisimTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                           </td>
                           <td style="width: 100px; text-align: right;">
                               <a href="AdminMesaj.aspx?iletisimID=<%# Eval("iletisimID") %>&islem=sil "><img alt="" class="auto-style2" src="Resimler/remove.png" style="width: 28px; height: 28px; text-align: right;" /></a>
                           </td>
                       </tr>
                       <tr>
                           <td colspan="4">
                               <asp:Label ID="Label4" runat="server" Font-Size="20px" Text='<%# Eval("iletisimIcerik") %>'></asp:Label>
                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>
           
                     

       </asp:Panel>

        
        

    
        
   </div>
</asp:Content>

