<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.Yorumlar" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 41px;
        }
        .auto-style6 {
            width: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" />
                </td>
                <td>Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="585px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large; text-align: left;" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"><asp:Image ID="Image2" runat="server"  Height="30px" ImageUrl="~/Pictures/deletepng.png" Width="30px" /></a>
                                
                        </td>
                        <td style="text-align: right" >
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Pictures/update.jfif" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>








</asp:Content>
