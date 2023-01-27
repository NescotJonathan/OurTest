<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="OurTest.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNamePassed" runat="server" Text="PASSED"></asp:Label>
            <br />
            <asp:Button ID="btnDefault" runat="server" Text="TO_DEFAULT" OnClick="btnDefault_Click" />
            <br />
            <br />
        </div>
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
                <br /> 
                <br /> 
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="MyNumber" HeaderText="MyNumber" SortExpression="MyNumber" />
                    </Columns>
                    <SelectedRowStyle BackColor="#CCFFFF" />
                </asp:GridView>
               <br /> 
               <br /> 
    </form>
</body>
</html>
