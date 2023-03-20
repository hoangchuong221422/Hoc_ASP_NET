<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThemHoa.aspx.cs" Inherits="ASP_WF_WebBanHoa.ThemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table cellpadding="2" style="width: 700px">
        <tr>
            <td style="width: 206px; height: 40px">Danh mục</td>
            <td style="height: 40px">
                <asp:DropDownList ID="drlDanhMucLoai" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 206px; height: 41px">Tên hoa</td>
            <td style="height: 41px">
                <asp:TextBox ID="txttenhoa" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 206px; height: 48px">Gia</td>
            <td style="height: 48px">
                <asp:TextBox ID="txtgia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 206px">Ngày cập nhật</td>
            <td>
                <asp:Calendar ID="cldngaycapnhat" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 206px; height: 52px">Hình</td>
            <td style="height: 52px">
                <asp:FileUpload ID="fulHinh" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 206px; height: 114px"></td>
            <td style="height: 114px">
                <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
                <br />
                <asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
