<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Textbox.aspx.cs" Inherits="Lab00.Textbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--            TextMode: chức năng của textbox
SingleLine:  hiển thị và nhập trên 1 dòng
MultiLine: trên nhiều dòng văn bản
Password: hiển thị * thay cho ký tự trong text--%>
            <div>
                <asp:TextBox ID="TextBox1" runat="server">Trên 1 dòng</asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Rows="5" TextMode="MultiLine"> 		Nhiều dòng</asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"> 			bc</asp:TextBox>
            </div>

        </div>
    </form>
</body>
</html>
