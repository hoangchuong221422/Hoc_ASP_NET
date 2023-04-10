<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="02_Vilidation.aspx.cs" Inherits="Nhung_Thu_Can_Trong_Du_An._02_Vilidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            margin-right: 683px;
        }
        .auto-style2 {
            height: 52px;
        }
        .auto-style3 {
            height: 51px;
            margin-left: 120px;
        }
        .auto-style4 {
            width: 2001px;
        }
        .auto-style5 {
            height: 52px;
            width: 2001px;
        }
        .auto-style6 {
            width: 2001px;
            height: 51px;
        }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            width: 2001px;
            height: 98px;
        }
        .auto-style9 {
            height: 98px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Kiểm tra TextBox có giá trị rỗng --%>

        </div>
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">Danh sách khách hàng<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Tên đăng nhập</td>
                <td>
                    <asp:TextBox ID="txtTenDN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được rỗng"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Mật khẩu</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMK" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Mật khẩu không được rỗng"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Nhập lại mật khẩu<br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtnhaplaimk" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvnhaplaimk" runat="server" ControlToValidate="txtnhaplaimk" ErrorMessage="Nhập lại MK không được rỗng"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="cvnhaplaimk" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimk" ErrorMessage="Mật khẩu gõ lại không trùng"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">Thông tin cá nhân</td>
            </tr>
            <tr>
                <td class="auto-style4">Họ tên khách hàng<br />
                </td>
                <td>
                    <asp:TextBox ID="txthotenkh" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txthotenkh" ErrorMessage="Họ tên KH không được rỗng"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Ngày sinh</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvngaysinh" runat="server" ControlToValidate="txtngaysinh" ErrorMessage="Ngày sinh không đúng định dạng" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Giới tính<br />
                </td>
                <td class="auto-style9">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Địa chỉ e-mail<br />
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Thu nhập<br />
                </td>
                <td>
                    <asp:TextBox ID="txtthunhap" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="rvthunhap" runat="server" ControlToValidate="txtthunhap" ErrorMessage="Thu nhập từ 1 - 50 triệu" MaximumValue="50000000" MinimumValue="1000000" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Đăng ký
                        " Width="173px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="vsDanhSachLoi" runat="server" HeaderText="Danh sách các lỗi" ShowMessageBox="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
