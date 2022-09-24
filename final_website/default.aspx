<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aaa.aspx.cs" Inherits="final_website._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-align: right;
        }
        *{
            background-color:powderblue
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="banner" class="auto-style3">

            <strong><em>SİTEME HOŞGELDİNİZ...</em></strong></div>
        <div class="auto-style1">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="default.aspx?sayfa=Konu 1" Text="Ay'ın Yapısı ve Özellikleri" Value="Ay'ın Yapısı ve Özellikleri"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="default.aspx?sayfa=Konu 2" Text="Ay'ın Hareketleri ve Evreleri" Value="Ay'ın Hareketleri ve Evreleri"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="default.aspx?sayfa=Sorular" Text="Çözümlü Sorular" Value="Çözümlü Sorular"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
            </strong>
        </div>

        <div id="icerik" runat="server">

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [baslik], [icerik], [resim] FROM [icerik] WHERE ([sayfa] = @sayfa)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Konu 1" Name="sayfa" QueryStringField="sayfa" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div id="footer" class="auto-style1">

            <strong><em>TÜM HAKLARI SAKLIDIR...<br />
            BERFİN ŞALK</em></strong></div>
    </form>
</body>
</html>
