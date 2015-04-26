<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FIKT.SwmEasy.Login" MasterPageFile="~/SwmMasterPage.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
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

        </style>


    <div class="auto-style1">

        <strong></strong>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">User name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please enter valid user name" ForeColor="Red"></asp:RequiredFieldValidator>
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
                    <asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Login_Click" CausesValidation="true" />
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
    &nbsp;
</asp:Content>
