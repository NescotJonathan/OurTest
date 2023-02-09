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
            <asp:ImageButton ID="imgButton" alt="pizza" class="auto-style1" longdesc="pizza" runat="server" src="italian-mozzarella.jpg" OnClick="imgButton_Click"  /></div>
        <div>
            <br />
            <asp:Button ID="btnAddPizza" runat="server" Text="Add Pizza" OnClick="btnAddPizza_Click" />
            <br />
        </div>
        <div>
            <br /><br /><br />
            <asp:Label ID="lblValue" runat="server" Text="Value"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>            
            <br /><br /><br />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
