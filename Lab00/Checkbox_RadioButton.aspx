<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkbox_RadioButton.aspx.cs" Inherits="Lab00.Checkbox_RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:CheckBox Checked="true" ID="CheckBox2" runat="server" />
            <asp:CheckBox ID="CheckBox3" runat="server" />
            <br />
            <asp:RadioButton GroupName="Chon1" ID="RadioButton1" runat="server" />
            <asp:RadioButton  GroupName="Chon1" ID="RadioButton2" runat="server" />
            <asp:RadioButton  GroupName="Chon1" ID="RadioButton3" runat="server" />
            <asp:RadioButton  GroupName="Chon1" ID="RadioButton4" runat="server" />
        </div>
    </form>
</body>
</html>
