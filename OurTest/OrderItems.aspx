<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderItems.aspx.cs" Inherits="OurTest.OrderItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br /><br />
            <asp:Label ID="lblID" runat="server" Text="ID: "></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            <br /><br /><br />
            <asp:RadioButton ID="rdSmallPizza" runat="server" Text="Small Pizza (£1.50)" />
            <br /><br />
            <asp:RadioButton ID="rdLargePizza" runat="server" Text="Large Pizza (£2.20)" />
            <br /><br />
            <asp:RadioButton ID="rdThinBasePizza" runat="server" Text="Thin Base Pizza (+ £0.20)" />
            <br /><br />
            <asp:RadioButton ID="rdThickBasePizza" runat="server" Text="Thick Base Pizza (+ £0.90)" />
            <br /><br />
            <asp:CheckBox ID="cbSalami" runat="server" Text="Salami (+ £1.10)" />
            <br /><br />
            <asp:CheckBox ID="cbMushrooms" runat="server" Text="Mushrooms (+ £0.90)" />
            <br /><br />
            <asp:CheckBox ID="cbOnions" runat="server" Text="Onions (+ £0.80)" />
            <br /><br />
            <asp:CheckBox ID="cdGreenPeppers" runat="server" Text="Green Peppers (+ £0.70)" />
            <br /><br />
            <asp:CheckBox ID="cdExtraCheese" runat="server" Text="Extra Cheese (+ £0.60)" />
            <br /><br /><br />
            <asp:Label ID="lblTotal" runat="server" Text="Total: £"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            <br /><br /><br />
        </div>
    </form>
</body>
</html>
