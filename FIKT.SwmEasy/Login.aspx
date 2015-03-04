<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 90%;
        }
        .auto-style3 {
            width: 150px;
        }
        .auto-style4 {
            width: 150px;
            text-align: right;
        }
        .auto-style5 {
            width: 187px;
        }
        .auto-style6 {
            width: 337px;
        }
        .auto-style7 {
            width: 337px;
            text-align: left;
        }
        .auto-style8 {
            width: 656px;
            height: 206px;
        }
    </style>
</head>
<body style="width: 744px">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong></strong>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button_Login" runat="server" Text="Login" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:ImageMap ID="ImageMap1" runat="server">
        </asp:ImageMap>
        <img class="auto-style8" src="Image/login_logo.png" /></form>
</body>
</html>
