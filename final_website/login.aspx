<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="final_website.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" />
        <br />
        <br />
        <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style1" Text="Kullanıcı Adı veya Şifre Hatalı" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table] WHERE (([kullanici_adi] = @kullanici_adi) AND ([sifre] = @sifre))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="kullanici_adi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="sifre" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        </strong>
    </form>
</body>
</html>
