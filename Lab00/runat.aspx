<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="runat.aspx.cs" Inherits="Lab00.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1" align="center">
            <tr>
                <td> Chọn tập tin</td>
                <td>
                    <input id="File1" type="file" runat="server" /></td></tr>
            <tr>
                <td align="center" colspan="2">
                    <input id="btnUpload" align="middle" type="button" value="Upload" 
                    runat="server" onserverclick="btnUpload_ServerClick"/></td> </tr>
            <tr>
                <td align="center" colspan="2">
                    <span id="lblThongBao" runat="server"></span> </td>
            </tr>
        </table>
        </div>

    </form>
</body>
</html>
