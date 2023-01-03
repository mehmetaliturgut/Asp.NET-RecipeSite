<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Tariföneri.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.Tariföneri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="txt_TarifAd" runat="server" Width="250px" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Malzemeler:</td>
        <td>
            <asp:TextBox ID="txtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Yapılış:&nbsp;</td>
        <td>
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Resim:</td>
        <td>
            <asp:FileUpload ID="FU_Resim" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Tarif Öneren:</td>
        <td>
            <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnTarifOner" runat="server"  Height="40px"  Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" CssClass="button-24" />
        </td>
    </tr>
</table>
</asp:Content>
