<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="Nhung_Thu_Can_Trong_Du_An.XemSach" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Xem Sách</h1>
    <div class="row">
        <div class="col-sm-3">
            <div class="list-group">
                <a href="#" class="list-group-item active">Chủ đề sách</a>
                <asp:Repeater DataSourceID="sqlchudesach" ID="rptchudesach" runat="server">
                    <ItemTemplate>
                        <a href='<%# Eval("MaCD","XemSach.aspx?MaCD={0}") %>' class="list-group-item"><%# Eval("TenChuDe") %></a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="col-sm-9">
            <div class="row">
                <asp:Repeater DataSourceID="sqlsach_theochude" ID="rptsach_theocd" runat="server">
                    <ItemTemplate>
                        <div class="data-items col-sm-3">
                            <div class="anh">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AnhBia","~/Bia_sach/{0}") %>' />
                            </div>
                            <div class="hienthi_thongtin">
                                <asp:Label ID="lbtensach" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                                <asp:Label ID="lbgiaban" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                                <div><button type="button" class="btn btn-success">Đặt mua</button></div>
                            </div>
                            
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="sqlchudesach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlsach_theochude" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="MaCD" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
