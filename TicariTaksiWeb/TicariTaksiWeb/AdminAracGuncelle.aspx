<%@ Page Language="C#" MasterPageFile="~/adminn.master" AutoEventWireup="true" CodeFile="~/AdminAracGuncelle.aspx.cs" Inherits="AdminAracGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            width: 522px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1" style="background-color: #669999">
        <tr>
            <td class="auto-style2" style="background-color: #2a595a">&nbsp;</td>
            <td class="auto-style3" style="background-color: #2a595a; color: #FFFFFF; font-weight: bold;">Araç Güncelleme Paneli</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #FFFFFF;">Araç Plakası:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_aracPlakaGuncelle" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #FFFFFF;">Araç Markası:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_aracMarkaGuncelle" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #FFFFFF;">Araç Şoför Adı:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_aracSoforAdiGuncelle" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right; color: #FFFFFF;">Araç Resmi</td>
            <td class="auto-style3">
                <asp:FileUpload ID="fu_aracResmiGuncelle" runat="server" CssClass="textboxGorsel" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btn_aracGuncelle" runat="server" CssClass="buttonGorsel" OnClick="btn_aracGuncelle_Click" Text="Güncelle" />
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
            </td>
        </tr>
    </table>
        


</asp:Content>
