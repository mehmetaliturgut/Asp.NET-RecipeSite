<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.YemekDetay" %>
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
    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: xx-large; color: #CCCCCC;" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" style="font-size: x-large" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" style="font-size: xx-small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div style="background-color: #FFFFCC">Yorum Yapma Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Yorumunuz:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Yorum Yap" Width="203px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
