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
        </div>
    </form>
</body>
</html>
