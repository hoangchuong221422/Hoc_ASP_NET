<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="QTSach.aspx.cs" Inherits="Nhung_Thu_Can_Trong_Du_An.QTSach" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Quản trị</h1>
    Tên sách <asp:TextBox ID="txttimsach" runat="server"></asp:TextBox>&nbsp;
    <asp:Button OnClick="btntracuu_Click" CssClass="btn btn-success" ID="btntracuu" runat="server" Text="Tra cứu" />

    <asp:GridView ID="gvsach" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSach" DataSourceID="sqlsach">
        <Columns>
            <asp:BoundField DataField="MaSach" HeaderText="MaSach" InsertVisible="False" ReadOnly="True" SortExpression="MaSach" />
            <asp:BoundField DataField="TenSach" HeaderText="TenSach" SortExpression="TenSach" />
            <asp:BoundField DataField="MaCD" HeaderText="MaCD" SortExpression="MaCD" />
            <asp:BoundField DataField="MaNXB" HeaderText="MaNXB" SortExpression="MaNXB" />
            <asp:BoundField DataField="Dongia" HeaderText="Dongia" SortExpression="Dongia" />
            <asp:BoundField DataField="AnhBia" HeaderText="AnhBia" SortExpression="AnhBia" />
            <asp:BoundField DataField="Ngaycapnhat" HeaderText="Ngaycapnhat" SortExpression="Ngaycapnhat" />
            <asp:BoundField DataField="Soluotxem" HeaderText="Soluotxem" SortExpression="Soluotxem" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="sqlsach" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT * FROM [Sach] WHERE ([TenSach] LIKE '%' + @TenSach + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txttimsach" Name="TenSach" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource> 
</asp:Content>
