<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="581px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style3">Malzemeler:</span></strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style3">Tarif:</span></strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="237px" ImageUrl="~/Pictures/images.jfif" Width="278px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4"><strong><span class="auto-style3">Puan:</span></strong>&nbsp;<asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </td>
                                <td class="auto-style5"><strong><span class="auto-style3">Tarih:</span></strong>&nbsp;<asp:Label ID="Label12" runat="server" style="font-style: italic" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
