<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thongtincanhan.aspx.cs" Inherits="Lab01.Thongtincanhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            margin-right: 0px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 92px;
        }
        .auto-style5 {
            height: 23px;
            width: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2"><strong>THÔNG TIN CÁ NHÂN</strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">Họ và Tên</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txthoten" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Giới Tính</td>
                    <td>
                        <asp:RadioButton  ID="rdtnam" runat="server" text="Nam" GroupName="GioiTinh"/>
                        <asp:RadioButton Checked="true" ID="rdtnu" runat="server" text="Nữ" GroupName="GioiTinh"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ngoại ngữ</td>
                    <td class="auto-style2">
                        <asp:CheckBox ID="chkAnhVan" runat="server" text="Anh Văn"/>
                        <asp:CheckBox ID="chkPhapVan" runat="server" text="Anh Văn" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Thu Nhập</td>
                    <td>
                        <asp:RadioButton GroupName="ThuNhap" ID="rdtduoi5trieu" runat="server" text="Dưới 5 triệu"/>
                        <asp:RadioButton GroupName="ThuNhap" ID="rdttu5den10" runat="server" text="5 - 10 triệu"/>
                        <asp:RadioButton GroupName="ThuNhap" ID="rdttren10" runat="server" text="Trên 10 triệu"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Trình Độ</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Sau Đại Học</asp:ListItem>
                            <asp:ListItem>Đại Học</asp:ListItem>
                            <asp:ListItem>Cao Đẳng</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng kí" OnClick="btnDangKy_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Label ID="lbketqua" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
