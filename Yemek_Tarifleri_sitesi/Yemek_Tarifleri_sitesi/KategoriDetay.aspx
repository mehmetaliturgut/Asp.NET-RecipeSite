<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style3">
            <tr>
                <td style="background-color: #CCCCCC"><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi</strong>:
                        <asp:Label ID="Label6" runat="server" style="color: #FFFFFF;" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><em>Puan:
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000;" style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #000000"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
