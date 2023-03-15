<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="WebBanHoa.XemHoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Danh mục loại:<asp:DropDownList ID="drlLoaiHoa" runat="server" AutoPostBack="true"
        DataSourceID="sqlLoaiHoa"
        DataTextField="TenLoai"
        DataValueField="MaLoai">
    </asp:DropDownList>

    <asp:SqlDataSource ID="sqlLoaiHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>"
        SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>
    '


            <div class="data_items">
                <asp:Repeater ID="rptHoa" runat="server" DataSourceID="sqlDsHoaTheoLoai">
                    <ItemTemplate>
                        <div class="items">
                            <div class="i">
                                <a href="#">                                    
                                    <img src='<%# Eval("hinh","Uploads/Hinh_San_Pham/{0}") %>' />
                                </a>
                            </div>
                            <div class="t">
                                <asp:Label ID="lbTenKhoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                                <br />
                                <asp:Label ID="LBGia" runat="server" Text='<%# Eval("Gia","{0: #,##0} đồng") %>'></asp:Label>
                                <br />
                                <button type="button" class="btn btn-success">Success</button>
                            </div>
                        </div>

                        <%--<asp:Image ID="Image1" ImageUrl='<%# Eval("hinh","Uploads/Hinh_San_Pham/{0}") %>' runat="server" />
                <br />
                <asp:Label ID="TenHoaLabel1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                <br />
                <asp:Label ID="GiaLabel1" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                        --%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
    <asp:SqlDataSource ID="sqlDsHoaTheoLoai" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="drlLoaiHoa" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%-- <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sqldshoa">
            <ItemTemplate>                
                <asp:Image ID="Image1" runat="server" ImageUrl="<%# Eval("") %>"/>
            </ItemTemplate>
            
        </asp:Repeater>
        <asp:SqlDataSource ID="sqldshoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>"
            DeleteCommand="DELETE FROM [Hoa] WHERE [MaHoa] = @MaHoa"
            InsertCommand="INSERT INTO [Hoa] ([TenHoa], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (@TenHoa, @Gia, @Hinh, @MaLoai, @NgayDang, @SoLuotXem)"
            SelectCommand="SELECT * FROM [Hoa]"
            UpdateCommand="UPDATE [Hoa] SET [TenHoa] = @TenHoa, [Gia] = @Gia, [Hinh] = @Hinh, [MaLoai] = @MaLoai, [NgayDang] = @NgayDang, [SoLuotXem] = @SoLuotXem WHERE [MaHoa] = @MaHoa">
            <DeleteParameters>
                <asp:Parameter Name="MaHoa" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenHoa" Type="String" />
                <asp:Parameter Name="Gia" Type="Double" />
                <asp:Parameter Name="Hinh" Type="String" />
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="NgayDang" Type="DateTime" />
                <asp:Parameter Name="SoLuotXem" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenHoa" Type="String" />
                <asp:Parameter Name="Gia" Type="Double" />
                <asp:Parameter Name="Hinh" Type="String" />
                <asp:Parameter Name="MaLoai" Type="Int32" />
                <asp:Parameter Name="NgayDang" Type="DateTime" />
                <asp:Parameter Name="SoLuotXem" Type="Int32" />
                <asp:Parameter Name="MaHoa" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>--%>
</asp:Content>
