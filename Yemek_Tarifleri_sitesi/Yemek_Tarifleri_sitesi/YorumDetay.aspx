<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        font-size: large;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Ad Soyad:&nbsp;</strong></td>
        <td>
            <asp:TextBox ID="txt_adsoyad" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail:</strong></td>
        <td>
            <asp:TextBox ID="txt_mail" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>İçerik:</strong></td>
        <td>
            <asp:TextBox ID="txt_icerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Yemek:</strong></td>
        <td>
            <asp:TextBox ID="txt_yemek" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Btn_Onay" runat="server" CssClass="button-24" OnClick="Btn_Onay_Click" Text="Onayla" />
        </td>
    </tr>
</table>
</asp:Content>
