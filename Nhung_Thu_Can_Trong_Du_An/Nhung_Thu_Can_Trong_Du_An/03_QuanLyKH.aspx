<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="03_QuanLyKH.aspx.cs" Inherits="Nhung_Thu_Can_Trong_Du_An._03_QuanLyKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="Content/Main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 50px;" class="row">
            <div class="col-sm-2">
                <div class="list-group">
                    <a href="#" class="list-group-item active">First item</a>

                    <asp:Repeater DataSourceID="sqlchude" ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <a href='<%# Eval("MaCD","03_QuanLyKH.aspx?MaCD={0}") %>' class="list-group-item"><%# Eval("TenChuDe") %></a>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
            <div class="col-sm-10">
                <div class="data_items">
                    <asp:Repeater DataSourceID="sqlsach_theochude" ID="rptsach_theokhoa" runat="server">
                        <ItemTemplate>
                            <div class="items">
                                <div class="i">
                                    <img src='<%# Eval("AnhBia","Bia_Sach/{0}") %>' />
                                </div>
                                <div class="t">
                                    <asp:Label ID="lbtensach" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label><br />
                                    <asp:Label ID="lbdongia" runat="server" Text='<%# Eval("DonGia","Giá bán: {0}") %>'></asp:Label><br />
                                    <button type="button" class="btn btn-success">Đặt mua</button>
                                </div>
                            </div>                        
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


            </div>
        </div>

        <asp:SqlDataSource ID="sqlchude" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sqlsach_theochude" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="macd" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
