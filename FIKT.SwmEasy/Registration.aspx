<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FIKT.SwmEasy.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 174px;
            height: 23px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
            text-align: left;
        }
        .auto-style5 {
            width: 174px;
            text-align: right;
            height: 42px;
        }
        .auto-style6 {
            width: 190px;
            height: 42px;
        }
        .auto-style7 {
            height: 23px;
            width: 190px;
        }
        .auto-style8 {
            width: 174px;
            text-align: right;
            height: 26px;
        }
        .auto-style9 {
            width: 190px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            width: 174px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
        #Reset1 {
            width: 61px;
        }
        .auto-style13 {
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">First name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="name" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Last name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="lname" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">User name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">E-mail:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valide E-mail Id." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both password must be the same." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Status:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownListSelect" runat="server" Width="180px">
                        <asp:ListItem>Select one</asp:ListItem>
                        <asp:ListItem>Professor</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListSelect" ErrorMessage="You must select one." ForeColor="Red" InitialValue="Select one"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CausesValidation="true" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style7"></td>
                <td class="auto-style12"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
