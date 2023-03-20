<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="ASP_WF_WebBanHoa.TraCuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Giá bán từ:
    <asp:TextBox ID="txtgiatu" runat="server"></asp:TextBox>
    đến
    <asp:TextBox ID="txtgiaden" runat="server"></asp:TextBox>
    <asp:Button ID="btntimkiem" OnClick="btntimkiem_Click" runat="server" Text="Tìm kiếm" CssClass="btn btn-success" />

    <div class="data_items">
        <asp:Repeater ID="rptHoa" runat="server">
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
                        <button type="button" class="btn btn-success">Success</button>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>   


</asp:Content>
