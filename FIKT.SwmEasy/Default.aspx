<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FIKT.SwmEasy.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1"></asp:DataPager>

            <table border="0">
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td colspan="2">
                                <%# ((FIKT.SwmEasy.Model.SeminarWorkModel) Container.DataItem).Title %>
                            </td>
                            <td>
                                <a href="#">симни документ</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <%# ((FIKT.SwmEasy.Model.SeminarWorkModel) Container.DataItem).Abstract %>
                            </td>
                        </tr>
                        <tr>
                            <td>Ментор: <%# ((FIKT.SwmEasy.Model.SeminarWorkModel) Container.DataItem).ProfessorName %></td>
                            <td>Предмет: <%# ((FIKT.SwmEasy.Model.SeminarWorkModel) Container.DataItem).CourseName %></td>
                            <td>Автор: <%# ((FIKT.SwmEasy.Model.SeminarWorkModel) Container.DataItem).StudentName %></td>
                        </tr>
                    </ItemTemplate>
                    <ItemSeparatorTemplate>
                        <tr>
                            <td colspan="3" style="height:20px;"></td>
                        </tr>
                    </ItemSeparatorTemplate>
                </asp:ListView>
            </table>
        </div>
    </form>
</body>
</html>
