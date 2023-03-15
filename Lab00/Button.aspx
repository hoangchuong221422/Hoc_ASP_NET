<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Button.aspx.cs" Inherits="Lab00.Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </div>
    </form>
</body>
</html>
