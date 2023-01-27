<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OurTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </p>
        </div>
        <div>
            <p>
                <asp:Label ID="lblMyNumber" runat="server" Text="My Number: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtMyNumber" runat="server"></asp:TextBox>
            </p>
        </div>
        <div>
            <p>
                
            </p>
        </div>
        <div>
            <p>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Person] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Person] ([FirstName], [MyNumber]) VALUES (@FirstName, @MyNumber)" SelectCommand="SELECT * FROM [Person]" UpdateCommand="UPDATE [Person] SET [FirstName] = @FirstName, [MyNumber] = @MyNumber WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="MyNumber" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="MyNumber" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
        <div>
            <p>
                
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="MyNumber" HeaderText="MyNumber" SortExpression="MyNumber" />
                    </Columns>
                    <SelectedRowStyle BackColor="#CCFFFF" />
                </asp:GridView>
                
            </p>
        </div>
        <div>
        </div>
        <div>

                <asp:Button ID="btnNewItem" runat="server" Text="New Item" OnClick="btnNewItem_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSaveNewItem" runat="server" Text="Save New Item" OnClick="btnSaveNewItem_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSaveEdit" runat="server" Text="Save Edit" OnClick="btnSaveEdit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDeleteItem" runat="server" Text="Delete Item" OnClick="btnDeleteItem_Click" />
        </div>
        <div>
            <p>
                
            </p>
        </div>
        <div>
            <p>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="MyNumber" HeaderText="MyNumber" SortExpression="MyNumber" />
                    </Columns>
                    <EditRowStyle BackColor="#0099CC" />
                    <SelectedRowStyle BackColor="#00CC99" />
                </asp:GridView>
            </p>
        </div>
        <div>
            <p>
                
            </p>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                <asp:BoundField DataField="PizzaPrice" HeaderText="PizzaPrice" SortExpression="PizzaPrice" />
            </Columns>
            <SelectedRowStyle BackColor="Yellow" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Pizza]"></asp:SqlDataSource>
        <p>

        </p>
        <p>
            <asp:Label ID="lblPizzaID" runat="server" Text="Pizza ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPizzaID" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblCustomerID" runat="server" Text="Customer ID:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblPizzaPrice" runat="server" Text="Pizza Price:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPizzaPrice" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblName" runat="server" Text="SessionName"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnShowSession" runat="server" Text="ShowSession" OnClick="btnShowSession_Click" />
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </form>
</body>
</html>
