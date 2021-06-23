<%@ Page Language="C#" MasterPageFile="~/adminn.master" AutoEventWireup="true" CodeFile="~/AdminRandevu.aspx.cs" Inherits="AdminRandevu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 285px;
        }
        .auto-style3 {
            width: 1155px;
        }
        .auto-style4 {
            width: 20px;
            height: 21px;
        }
        .auto-style5 {
            width: 700px;
            height: auto;
            float: left;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         &nbsp;<asp:Button ID="btn_raArti" runat="server" Height="25px" OnClick="btn_raArti_Click" Text="+" Width="25px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
           &nbsp;<asp:Button ID="btn_raEksi" runat="server" Height="25px" OnClick="btn_raEksi_Click" Text="-" Width="25px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
        <b style="color: #2a595c">Onaysız Randevu Paneli</b>

    <asp:Panel ID="pnl_randevu" runat="server" BackColor="#669999" ForeColor="White">
        <asp:DataList ID="DataList1" runat="server" Width="700px">
            <ItemTemplate>
                <div style="background-color: #669999;" class="auto-style5">
                      <div style="width:590px; height:25px; float:left; background-color: #669999;">
                       </div>
                       <div style="width:590px; height:25px; float:left">

                           <table class="auto-style1">
                               <tr>
                                   <td class="auto-style3" style="text-align: left">
                                       <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Size="22px" ForeColor="Maroon" Text='<%# Eval("randevuAd") %>'></asp:Label>
                                       <asp:Label ID="label2" runat="server" Font-Bold="True" Font-Size="16px" ForeColor="White" Text='<%# Eval("randevuSoyad") %>'></asp:Label>
                                       <asp:Label ID="label3" runat="server" Font-Size="16px" ForeColor="White" Text='<%# Eval("randevuEmail") %>'></asp:Label>
                                       <asp:Label ID="label4" runat="server" Font-Size="16px" ForeColor="White" Text='<%# Eval("randevuTarih") %>'></asp:Label>
                                   </td>
                                   <td class="auto-style3" style="text-align: right">
                                       <a href="AdminRandevu.aspx?randevuID=<%#Eval("randevuID") %> &islem3=update"><img alt="" class="auto-style4" src="Resimler/reuse.png" /></a>
                                   </td>
                                   <td class="auto-style2" style="text-align: right">
                                <a href="AdminRandevu.aspx?randevuID=<%#Eval("randevuID") %> &islem2=sil2"><img alt="" class="auto-style4" src="Resimler/remove.png" /></a>
                                

                                   </td>
                               </tr>
                           </table>

                       </div>
                      _______________________________________________________________________________________</div>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>

        
    </div>
        <div style="height:30px;"></div>
    
     &nbsp;<asp:Button ID="btn_onayliArti" runat="server" Height="25px" OnClick="btn_onayliArti_Click" Text="+" Width="25px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
           &nbsp;<asp:Button ID="btn_onayliEksi" runat="server" Height="25px" OnClick="btn_onayliEksi_Click" Text="-" Width="25px" BackColor="#D5D5D5" Font-Bold="True" Font-Size="20px" />
        <b style="color: #2a595c">Onaylı Randevu Paneli</b>

    <asp:Panel ID="Panel1" runat="server" BackColor="#669999" ForeColor="White">
        <asp:DataList ID="DataList2" runat="server" Width="700px">
            <ItemTemplate>
                <div style="background-color: #669999;" class="auto-style5">
                      <div style="width:590px; height:25px; float:left; background-color: #669999;">
                       </div>
                       <div style="width:590px; height:25px; float:left">

                           <table class="auto-style1">
                               <tr>
                                   <td class="auto-style3" style="text-align: left">
                                       <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Size="22px" ForeColor="Maroon" Text='<%# Eval("randevuAd") %>'></asp:Label>
                                       <asp:Label ID="label2" runat="server" Font-Bold="True" Font-Size="16px" ForeColor="White" Text='<%# Eval("randevuSoyad") %>'></asp:Label>
                                       <asp:Label ID="label3" runat="server" Font-Size="16px" ForeColor="White" Text='<%# Eval("randevuEmail") %>'></asp:Label>
                                       <asp:Label ID="label4" runat="server" Font-Size="16px" ForeColor="White" Text='<%# Eval("randevuTarih") %>'></asp:Label>
                                   </td>
                                   <td class="auto-style3" style="text-align: right">
                                       &nbsp;</td>
                                   <td class="auto-style2" style="text-align: right">
                                <a href="AdminRandevu.aspx?randevuID=<%#Eval("randevuID") %> &islem=sil"> <img alt="" class="auto-style4" src="Resimler/remove.png" /></a>
                               

                                   </td>
                               </tr>
                           </table>

                       </div>
                      _______________________________________________________________________________________</div>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>

</asp:Content>
