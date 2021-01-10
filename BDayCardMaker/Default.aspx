<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BDayCardMaker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 529px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style2">~ Make a Birthday Card ~</h1>
            <table class="auto-style1">
                <tr>
                    <td>Choose a background color:<br />
                        <asp:DropDownList ID="ddListColors" runat="server" AutoPostBack="True" Height="16px" Width="151px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        Choose a font:<br />
                        <asp:DropDownList ID="ddListFonts" runat="server" AutoPostBack="True" Height="16px" Width="151px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        Specify a numeric font-size:<br />
                        <asp:TextBox ID="txbxFontSize" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:CheckBox ID="chkbxDefaultPic" runat="server" Text="Add the Default Picture" />
                        <br />
                        <br />
                        Enter the greeting text below:<br />
                        <asp:TextBox ID="txbxGreeting" runat="server" Height="110px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="108px" OnClick="btnUpdate_Click" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;
                        <asp:Panel ID="panelBdayCard" runat="server" Height="395px" Width="277px">
                            <div class="auto-style2">
                                <br />
                                <asp:Label ID="lblCardGreeting" runat="server"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="imgOnCard" runat="server" Height="181px" Width="169px" />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
