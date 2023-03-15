<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BT01.aspx.cs" Inherits="Lab00.BT01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 545px;
            height: 383px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="2" class="auto-style1">
                <tr>
                    <td>Nhập họ và tên</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="btnAdd" OnClick="btnAdd_Click" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="lstDanhSach" runat="server"></asp:ListBox>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
