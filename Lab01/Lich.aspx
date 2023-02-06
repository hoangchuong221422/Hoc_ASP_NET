<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lich.aspx.cs" Inherits="Lab01.Lich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblngayhn" runat="server"></asp:Label>
        <br />
        Chọn ngày sinh nhật của bạn:<br />
        <asp:Calendar ID="Clngaysinh" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br />
        <asp:Label ID="lblthongtin" runat="server"></asp:Label>
    </form>
</body>
</html>
