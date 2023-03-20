<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="Web_BookStore.XemSach" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-sm-3">
                <div class="list-group">
                    <a href="#" class="list-group-item disabled">Chủ đề sách</a>
                    <asp:Repeater ID="rptMenu" runat="server" DataSourceID="sqlDSTheoLoai">
                        <ItemTemplate>
                            <a href="<%# Eval("MaCD","XemSach.aspx?maloai={0}")%>" class="list-group-item">
                                <%# Eval("TenChuDe") %></a>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

            <div class="col-sm-9">
                <div class="data_items">
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="sqlDSTheoTungLoai">
                        <ItemTemplate>
                            <div class="items">
                                <div class="i">
                                    <img src='<%# Eval("AnhBia","Bia_sach/{0}") %>' />
                                </div>
                                <div class="t">
                                    <asp:Label ID="lbTenKhoa" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="LBGia" runat="server" Text='<%# Eval("DonGia","{0: #,##0} đồng") %>'></asp:Label>
                                    <br />
                                    <button type="button" class="btn btn-success">Thêm hoa</button>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>


    <asp:SqlDataSource ID="sqlDSTheoTungLoai" runat="server"
        ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>"
        SelectCommand="SELECT * FROM [Sach] WHERE ([MaCD] = @MaCD)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="5" Name="MaCD" QueryStringField="maloai" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlDSTheoLoai" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>"
        SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
</asp:Content>
