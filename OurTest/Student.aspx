<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="OurTest.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblStudentName" runat="server" Text="Student Name"></asp:Label>
        <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
       <br /><br />
        <asp:Label ID="lblStudentSecondName" runat="server" Text="Student Second Name"></asp:Label>
        <asp:TextBox ID="txtStudentSecondName" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <br /><br />       
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br /><br />
        <asp:Button ID="btnNewStudent" runat="server" Text="New Student" />
        <asp:Button ID="btnSaveNew" runat="server" Text="Save New Student" OnClick="btnSaveNew_Click" />
        <asp:Button ID="btnSaveEdit" runat="server" Text="Save Edit" OnClick="btnSaveEdit_Click" />
        <asp:Button ID="btnDeleteStudent" runat="server" Text="Delete Student" OnClick="btnDeleteStudent_Click" />
        <br /><br /><br />
        <asp:GridView ID="grdSelectedStudent" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="StudentID" DataSourceID="SqlDataSourceStudent" OnSelectedIndexChanged="grdSelectedStudent_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="SecondName" HeaderText="SecondName" SortExpression="SecondName" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            </Columns>
            <SelectedRowStyle BackColor="#FFCCFF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceStudent" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [StudentID], [FirstName], [SecondName], [DOB] FROM [Students]"></asp:SqlDataSource>
    </form>
</body>
</html>
