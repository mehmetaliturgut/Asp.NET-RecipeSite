<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 45px;
        }
        .auto-style7 {
            width: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                </td>
                <td>Onaysız Tarifler Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="585px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large; text-align: left;" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            
                            <a href="TarifönerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image2" runat="server"  Height="30px" ImageUrl="~/Pictures/choice.png" Width="30px" /></a>
                                
                        </td>
                        
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>


    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"    />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"    />
                </td>
                <td>Onaylı Tarifler Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="585px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" style="font-size: large; text-align: left;" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            
                            <a href="TarifönerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image2" runat="server"  Height="30px" ImageUrl="~/Pictures/choice.png" Width="30px" /></a>
                                
                        </td>
                        
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>



</asp:Content>
