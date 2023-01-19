<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OurTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="bob" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                <asp:BoundField DataField="PizzaPrice" HeaderText="PizzaPrice" SortExpression="PizzaPrice" />
            </Columns>
            <SelectedRowStyle BackColor="Yellow" />
        </asp:GridView>
        <asp:SqlDataSource ID="bob" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Pizza]"></asp:SqlDataSource>
        <asp:TextBox ID="txtPizzaPrice" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblPizzaPrice" runat="server" Text="lblPizzaPrice"></asp:Label>
        </p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </form>
</body>
</html>
