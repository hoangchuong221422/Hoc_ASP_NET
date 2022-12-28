<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            width: 293px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="6" cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2" class="auto-style3">ĐƠN ĐẶT HÀNG&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Khách hàng:</td>
                    <td>
                        <asp:TextBox ID="txtkhachhang" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Địa chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mã số thuế:</td>
                    <td>
                        <asp:TextBox ID="txtmasothue" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top" class="auto-style2">Chọn các loại bánh sau:<br />
                        <br />
                        <asp:DropDownList ID="ddlbanh" runat="server" Height="81px" Width="171px">
                            <asp:ListItem>Bánh Su Kem</asp:ListItem>
                            <asp:ListItem>Bánh Bía</asp:ListItem>
                            <asp:ListItem>Bánh Quy</asp:ListItem>
                            <asp:ListItem>Bánh </asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Số lượng:
                        <asp:TextBox ID="txtsoluong" runat="server" Width="83px"></asp:TextBox>
&nbsp;cái<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button Width="35px" ID="btnchuyen" runat="server" Text=">" OnClick="btnchuyen_Click" />
                    </td>
                    <td>Danh sách bánh được đặt:<br />
                        <asp:ListBox SelectionMode="Multiple" ID="lstboxbanh" runat="server" Height="122px" Width="172px"></asp:ListBox>
                        <asp:ImageButton Width="25px" ImageUrl="~/images/images.png" ID="imgbtnxoa" runat="server" OnClick="imgbtnxoa_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <asp:Button CssClass="btnInDon" ID="btnInDon" runat="server" Text="In đơn đặt hàng" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
