<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 40px;
        }
        .auto-style7 {
            width: 38px;
        }
        .auto-style8 {
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>Kategori Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="585px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large; text-align: left;" Text='<%# Eval("KategoriAd") %>'></asp:Label>
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
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC; margin-top:15px;">
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>Kategori Ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_ekle" runat="server" CssClass="button-24" Text="Ekle" OnClick="btn_ekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
