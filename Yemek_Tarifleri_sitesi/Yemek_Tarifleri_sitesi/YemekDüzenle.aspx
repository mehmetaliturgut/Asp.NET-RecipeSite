<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="Yemek_Tarifleri_sitesi.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: medium;
            text-align: right;
        }
    .auto-style6 {
        background: #FF4742;
        border: 1px solid #FF4742;
        border-radius: 6px;
        box-shadow: rgba(0, 0, 0, 0.1) 1px 2px 4px;
        box-sizing: border-box;
        color: #FFFFFF;
        cursor: pointer;
        display: inline-block;
        font-family: nunito,roboto,proxima-nova,"proxima nova",sans-serif;
        font-size: 16px;
        font-weight: bold;
        line-height: 16px;
        min-height: 40px;
        outline: 0;
        padding: 12px 14px;
        text-align: center;
        text-rendering: geometricprecision;
        text-transform: none;
        user-select: none;
        -webkit-user-select: none;
        touch-action: manipulation;
        vertical-align: middle;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yemek Adı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="120px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Btn_güncelle" runat="server" CssClass="button-24" OnClick="Btn_güncelle_Click" Text="Güncelle" Width="200px" />
            &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Günün Yemeği Seç" Width="200px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
