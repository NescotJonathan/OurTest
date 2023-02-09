<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopper.aspx.cs" Inherits="OurTest.shopper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 174px;
            height: 137px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <img alt="pizza" class="auto-style1" longdesc="pizza" src="italian-mozzarella.jpg" /><br />
        </div>
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
        </div>
        <div>
            <br />
            <br />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
