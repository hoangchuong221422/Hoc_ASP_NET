<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listbox_DropDown.aspx.cs" Inherits="Lab00.Listbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server">
               <%-- <asp:ListItem> Gieo quẻ </asp:ListItem>
                <asp:ListItem> Ngày đầu tiên </asp:ListItem>
                <asp:ListItem> Chạy về khóc với anh</asp:ListItem>--%>

            </asp:ListBox>
            <br />
            <asp:DropDownList SelectionMode="Multiple" ID="DropDownList1" runat="server">
                   <%--<asp:ListItem> Gieo quẻ </asp:ListItem>
                <asp:ListItem> Ngày đầu tiên </asp:ListItem>
                <asp:ListItem> Chạy về khóc với anh</asp:ListItem>--%>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
