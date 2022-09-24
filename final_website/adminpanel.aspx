<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="final_website.adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 422px;
            height: 202px;
        }
    </style>
    <script type="text/javascript" src="ckeditor/ckeditor.js" ></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Panel Sayfası<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sayfa:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="sayfa" DataValueField="sayfa" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sayfa] FROM [icerik]" UpdateCommand="UPDATE icerik SET baslik = @title, icerik = @content, resim = @image WHERE (sayfa = @page)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" />
                    <asp:SessionParameter Name="image" SessionField="resim" />
                    <asp:ControlParameter ControlID="TextArea1" Name="content" PropertyName="Value" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="page" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Başlık:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="327px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="İçerik:"></asp:Label>
            <br />
&nbsp;<textarea id="TextArea1" runat="server" class="auto-style1" name="S1"></textarea><br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Resim:"></asp:Label>
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Resmi Yükle" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Değişiklikleri Kaydet" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [baslik], [icerik], [resim] FROM [icerik] WHERE ([sayfa] = @sayfa)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="Konu 1" Name="sayfa" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
    <script>
        window.onload = function() {
            CKEDITOR.replace('TextArea1');
        };
    </script>
</body>
</html>
