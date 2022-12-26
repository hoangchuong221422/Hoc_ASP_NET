<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }      
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 22px;
            width: 583px;
        }
        .auto-style5 {
            height: 22px;
            width: 433px;
            text-align: right;
        }
        .auto-style6 {
            width: 433px;
        }
        .auto-style7 {
            width: 433px;
            height: 23px;
            text-align: right;
        }
        .auto-style8 {
            height: 23px;
            width: 583px;
        }
        .auto-style9 {
            width: 583px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">Tính toán</td>
                </tr>
                <tr>
                    <td class="auto-style5">Số thứ 1</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSo1" runat="server" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Số thứ 2</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtSo2" runat="server" Width="218px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btCong" runat="server" Text="Cộng" OnClick="btCong_Click" />
                        <asp:Button ID="btTru" runat="server" Text="Trừ" OnClick="btTru_Click" />
                        <asp:Button ID="btNhan" runat="server" Text="Nhân" OnClick="btNhan_Click" />
                        <asp:Button ID="btChia" runat="server" Text="Chia" OnClick="btChia_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Kết quả</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtKetQua" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style7">Kết quả</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
