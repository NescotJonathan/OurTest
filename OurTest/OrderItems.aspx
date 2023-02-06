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
            <asp:Label ID="lblID" runat="server" Text="ID: "></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtID" runat="server" ReadOnly="True"></asp:TextBox>
            <br /><br /><br />
            <asp:RadioButton ID="rdSmallPizza" runat="server" Text="Small Pizza (£1.50)" GroupName="grpSize" AutoPostBack="True" />
            <br /><br />
            <asp:RadioButton ID="rdLargePizza" runat="server" Text="Large Pizza (£2.20)" Checked="True" GroupName="grpSize" AutoPostBack="True" />
            <br /><br />
            <asp:RadioButton ID="rdThinBasePizza" runat="server" Text="Thin Base Pizza (+ £0.20)" GroupName="grpBase" AutoPostBack="True" />
            <br /><br />
            <asp:RadioButton ID="rdThickBasePizza" runat="server" Text="Thick Base Pizza (+ £0.90)" Checked="True" GroupName="grpBase" AutoPostBack="True" />
            <br /><br />
            <asp:CheckBox ID="cbSalami" runat="server" Text="Salami (+ £1.10)" AutoPostBack="True" />
            <br /><br />
            <asp:CheckBox ID="cbMushrooms" runat="server" Text="Mushrooms (+ £0.90)" AutoPostBack="True" />
            <br /><br />
            <asp:CheckBox ID="cbOnions" runat="server" Text="Onions (+ £0.80)" AutoPostBack="True" />
            <br /><br />
            <asp:CheckBox ID="cbGreenPeppers" runat="server" Text="Green Peppers (+ £0.70)" AutoPostBack="True" />
            <br /><br />
            <asp:CheckBox ID="cbExtraCheese" runat="server" Text="Extra Cheese (+ £0.60)" AutoPostBack="True" />
            <br /><br /><br />
            <asp:Button ID="btnTotal" runat="server" Text="Click to TOTAL" OnClick="btnTotal_Click" />
            <br /><br /><br />
            <asp:Label ID="lblTotal" runat="server" Text="Total: £"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtTotal" runat="server" ReadOnly="True"></asp:TextBox>
            <br /><br /><br />
            <asp:Button ID="btnCommit" runat="server" Text="COMMIT to DB" OnClick="btnCommit_Click" />
            <br /><br /><br />
            <asp:GridView ID="grdSelectedPizza" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                    <asp:BoundField DataField="PizzaPrice" HeaderText="PizzaPrice" SortExpression="PizzaPrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Pizza]"></asp:SqlDataSource>
            <br /><br /><br />
            <asp:Button ID="btnReturn" runat="server" Text="Return to Default Page" OnClick="btnReturn_Click" />
            <br /><br /><br />
        </div>
    </form>
</body>
</html>
