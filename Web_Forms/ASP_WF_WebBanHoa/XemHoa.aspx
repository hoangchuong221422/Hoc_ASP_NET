<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="ASP_WF_WebBanHoa.XemHoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Danh mục loại:<asp:DropDownList ID="drlLoaiHoa" runat="server"
        AutoPostBack="True"
        DataSourceID="sqlLoaiHoa"
        DataTextField="TenLoai"
        DataValueField="MaLoai">
    </asp:DropDownList>

    <div class="data_items">
        <asp:Repeater ID="rptHoa" runat="server" DataSourceID="sqlDsHoaTheoLoai">
            <ItemTemplate>
                <div class="items">
                    <div class="i">

                        <img src='<%# Eval("Hinh","Uploads/Hinh_San_Pham/{0}") %>' />

                    </div>
                    <div class="t">
                        <asp:Label ID="lbTenKhoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                        <br />
                        <asp:Label ID="LBGia" runat="server" Text='<%# Eval("Gia","{0: #,##0} đồng") %>'></asp:Label>
                        <br />
                        <button type="button" class="btn btn-success">Thêm hoa</button>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:SqlDataSource ID="sqlLoaiHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="sqlDsHoaTheoLoai" runat="server"
        ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>"
        SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="drlLoaiHoa" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>

    </asp:SqlDataSource>

</asp:Content>
