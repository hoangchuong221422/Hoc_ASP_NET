<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01_File_Upload.aspx.cs" Inherits="Nhung_Thu_Can_Trong_Du_An._01_File_Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div style="text-align: center;">
            <asp:LinkButton ID="lbtUpload" runat="server" OnClick="lbtUpload_Click1">UPLOAD</asp:LinkButton> &nbsp;|
            <asp:LinkButton ID="lbtXemUpload" runat="server" OnClick="lbtXemUpload_Click1">Xem UPLOAD</asp:LinkButton>
        </div>
        <div>
           <asp:MultiView ID="mtvUploadXemUpload" runat="server">
                <asp:View ID="vUpload" runat="server">     
                    <div style="text-align: center; padding: 20px">
                        Chọn tập tin <asp:FileUpload ID="Fupload" runat="server" /> <%-- <= quan trọng--%>
                    <br />                   
                    <asp:Button ID="btnUpload" runat="server" Text="Button" OnClick="btnUpload_Click" />
                        <br />
                        <asp:Label ID="lbltb" runat="server" Text="Label"></asp:Label>
                    </div>
                   
                </asp:View>
                <asp:View ID="vXemUpLoad" runat="server">
                     <div style="text-align: center; padding: 20px">
                    <asp:ListBox ID="lstFile" Rows="5" Width="100%" runat="server">

                    </asp:ListBox>
                     </div>
                </asp:View>
                    
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
