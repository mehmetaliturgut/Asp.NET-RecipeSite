<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 38px;
        }
        .auto-style7 {
            width: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td>Mesajlar Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="585px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large; text-align: left;" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image2" runat="server"  Height="30px" ImageUrl="~/Pictures/read.png" Width="30px" /></a>
                                
                        </td>
                        
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>




</asp:Content>
