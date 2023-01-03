<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KullaniciYorumlar.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.KullaniciYorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 42px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>Onaylanan Yorum Listesi</td>
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
                            
                            <asp:Image ID="Image2" runat="server"  Height="30px" ImageUrl="~/Pictures/deletepng.png" Width="30px" />
                                
                        </td>
                        <td style="text-align: right" >
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Pictures/update.jfif" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

<asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC;margin-top:10px;">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                </td>
                <td>Onaylanmayan Yorum Listesi</td>
            </tr>
        </table>
    </asp:Panel>

<asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="585px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large; text-align: left;" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            
                            <asp:Image ID="Image2" runat="server"  Height="30px" ImageUrl="~/Pictures/deletepng.png" Width="30px" />
                                
                        </td>
                        <td style="text-align: right" >
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Pictures/update.jfif" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>





</asp:Content>
