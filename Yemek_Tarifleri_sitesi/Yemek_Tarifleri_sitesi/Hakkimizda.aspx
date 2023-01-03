<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        <span class="auto-style3">HAKKIMIZDA&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:DataList ID="DataList2" runat="server" Width="581px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:Image ID="Image1" runat="server" Height="225px" ImageUrl="~/Pictures/indir.jfif" Width="582px" />
</asp:Content>
