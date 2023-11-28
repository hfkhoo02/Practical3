<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 337px;
        }

        .auto-style3 {
            width: 64px;
        }

        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%; text-align: center;">
            <tr>
                <td colspan="2" class="auto-style2"><strong>ABC BUS ONLINE BOOKING & TICKETING SYSTEM</strong></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    <asp:Label ID="lblTime" runat="server" Text="[lblTime]"></asp:Label></td>

            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Postback" /></td>
            </tr>

            <tr>
                <td style="text-align: left;" class="auto-style3">Date</td>
                <td>
                    <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>

            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td style="text-align: left;" class="auto-style4">
                    <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Adult</td>
                <td style="text-align: left;" class="auto-style4">
                    <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Child</td>
                <td style="text-align: left;" class="auto-style4">
                    <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">From</td>
                <td style="text-align: left;" class="auto-style4">
                    <asp:DropDownList ID="ddlFrom" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Hentian Duta</asp:ListItem>
                        <asp:ListItem>Hentian Putra</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Destination</td>
                <td style="text-align: left;" class="auto-style4">
                    <asp:DropDownList ID="ddlTo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Butterworth</asp:ListItem>
                        <asp:ListItem>Seremban</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Ticket Price</td>
                <td style="text-align: left;" class="auto-style4">
                    <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>

        </table>

        <p><asp:Label ID="lblError" runat="server" Text="[lblError]" Visible="False"></asp:Label></p>

    </form>

</body>
</html>
