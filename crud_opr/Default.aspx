<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="crud_opr.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 168px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 168px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">Student Information Management</td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="txtAddress" runat="server">
                            <asp:ListItem>Gujrat</asp:ListItem>
                            <asp:ListItem>Maharastra</asp:ListItem>
                            <asp:ListItem>TamilNadu</asp:ListItem>
                            <asp:ListItem>Keral</asp:ListItem>
                            <asp:ListItem>Rajsthan</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Age"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtAge" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Contact"></asp:Label></td>
                    <td class="auto-style1"><asp:TextBox ID="txtContact" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="submit" runat="server" Text="Save" OnClick="submit_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>
        &nbsp;</div>
    </form>
</body>
</html>
