<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03_QuanLySV.aspx.cs" Inherits="Nhung_Thu_Can_Trong_Du_An._03_1_QuanLySV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Quản lý sách</h3>
            <asp:SqlDataSource ID="sqlDSSach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" DeleteCommand="DELETE FROM [Sach] WHERE [MaSach] = @MaSach" InsertCommand="INSERT INTO [Sach] ([TenSach], [MaCD], [MaNXB], [Dongia], [AnhBia], [Ngaycapnhat], [Soluotxem]) VALUES (@TenSach, @MaCD, @MaNXB, @Dongia, @AnhBia, @Ngaycapnhat, @Soluotxem)" SelectCommand="SELECT * FROM [Sach]" UpdateCommand="UPDATE [Sach] SET [TenSach] = @TenSach, [MaCD] = @MaCD, [MaNXB] = @MaNXB, [Dongia] = @Dongia, [AnhBia] = @AnhBia, [Ngaycapnhat] = @Ngaycapnhat, [Soluotxem] = @Soluotxem WHERE [MaSach] = @MaSach">
                <DeleteParameters>
                    <asp:Parameter Name="MaSach" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenSach" Type="String" />
                    <asp:Parameter Name="MaCD" Type="Int32" />
                    <asp:Parameter Name="MaNXB" Type="Int32" />
                    <asp:Parameter Name="Dongia" Type="Decimal" />
                    <asp:Parameter Name="AnhBia" Type="String" />
                    <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
                    <asp:Parameter Name="Soluotxem" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSach" Type="String" />
                    <asp:Parameter Name="MaCD" Type="Int32" />
                    <asp:Parameter Name="MaNXB" Type="Int32" />
                    <asp:Parameter Name="Dongia" Type="Decimal" />
                    <asp:Parameter Name="AnhBia" Type="String" />
                    <asp:Parameter Name="Ngaycapnhat" Type="DateTime" />
                    <asp:Parameter Name="Soluotxem" Type="Int32" />
                    <asp:Parameter Name="MaSach" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="qvSach" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="sqlDSSach" CssClass="auto-style1" AllowPaging="True" PageSize="2">
                <Columns>
                   
                    <asp:BoundField DataField="MaSach" HeaderText="Mã sách"/>
                    <asp:BoundField DataField="TenSach" HeaderText="Tên sách"/>                  
                    <asp:BoundField DataField="MaNXB" HeaderText="Mã Nhà Xuất Bản" />
                    <asp:BoundField DataField="Dongia" HeaderText="Đơn giá" />
                    <asp:ImageField DataImageUrlField="AnhBia" DataImageUrlFormatString="Bia_sach/{0}" HeaderText="Ảnh">
                    </asp:ImageField>
                    <asp:BoundField DataField="Ngaycapnhat" HeaderText="Ngày cập nhật" />
                    <asp:BoundField DataField="Soluotxem" HeaderText="Soos lượt xem"/>

                      <asp:BoundField DataField="MaCD" HeaderText="Mã Chủ Đề" />
                    <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Sửa" UpdateText="Lưu" CancelText="Hủy"/>
                  
                   
                  
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
