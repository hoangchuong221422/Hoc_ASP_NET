<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLMonHoc.aspx.cs" Inherits="QLWebDaoTao.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>QUẢN LÝ MÔN HỌC</h2>
    <hr />

    <form runat="server">
        <h4>DANH SÁCH MÔN HỌC</h4>
        <asp:GridView CssClass="table table-bordered"
            ID="gvMonhoc" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Mã môn học" DataField="MaMH" />
                <asp:BoundField HeaderText="Tên môn học" DataField="TenMH" />
                <asp:BoundField HeaderText="Số tiết" DataField="SoTiet" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btEdit" CommandName="Edit" runat="server" Text="Sửa"
                            CssClass="btn btn-success" />
                        <asp:Button ID="btDelete" CommandName="Delete" runat="server"
                            Text="Xóa" CssClass="btn btn-danger" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btUpdate" CommandName="Update" runat="server"
                            Text="Ghi" CssClass="btn btn-success" />
                        <asp:Button ID="btCancel" CommandName="Cancel" runat="server"
                            Text="Không" CssClass="btn btn-danger" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#003399" ForeColor="#ffffff" />
        </asp:GridView>
    </form>


</asp:Content>
