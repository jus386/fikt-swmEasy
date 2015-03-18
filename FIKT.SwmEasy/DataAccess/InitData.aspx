<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InitData.aspx.cs" Inherits="FIKT.SwmEasy.DataAccess.InitData1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnInit" runat="server" Text="Init Data" OnClick="btnInit_Click" />
        </div>
        <div>
            <asp:Label ID="lblError" ForeColor="Red" runat="server" Text="Label" Visible="false"></asp:Label>
            <asp:Label ID="lblSuccess" ForeColor="Green" runat="server" Text="Success" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
