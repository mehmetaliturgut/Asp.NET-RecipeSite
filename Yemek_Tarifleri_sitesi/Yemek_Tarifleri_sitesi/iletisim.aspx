<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        font-weight: bold;
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
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="txt_adsoyad" runat="server" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adresiniz:</td>
        <td>
            <asp:TextBox ID="txt_mail" runat="server" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Konu:</td>
        <td>
            <asp:TextBox ID="txt_konu" runat="server" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mesaj:</td>
        <td>
            <asp:TextBox ID="txt_mesaj" runat="server" CssClass="tb2" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server"  Text="Gönder" Width="168px" CssClass="button-24" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
