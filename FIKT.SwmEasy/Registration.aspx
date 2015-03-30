<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FIKT.SwmEasy.Registration" MasterPageFile="~/SwmMasterPage.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

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
    <asp:Panel runat="server" ID="pnlCreateUser">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">First name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Last name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtLastNname" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">User name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">E-mail:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="E-mail is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="You must enter the valide E-mail Id." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Both password must be the same." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Status:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlUserType" runat="server" Width="180px">
                        <asp:ListItem>Select one</asp:ListItem>
                        <asp:ListItem>Професор</asp:ListItem>
                        <asp:ListItem>Студент</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlUserType" ErrorMessage="You must select one." ForeColor="Red" InitialValue="Select one"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Submit" CausesValidation="true" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style7"></td>
                <td class="auto-style12"></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlCreateSuccess" Visible="false">
        <h2>Успешна регистрација</h2>
        <h3>
            <a href="Login.aspx">Најави се</a>
        </h3>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlCreateError" Visible="false">
        <asp:Label runat="server" ForeColor="Red" ID="lblError"></asp:Label>
    </asp:Panel>
</asp:Content>
