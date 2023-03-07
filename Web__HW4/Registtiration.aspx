<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registtiration.aspx.cs" Inherits="Assignment_4.WebHW4.Registtiration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>

                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="Name"></asp:RequiredFieldValidator>
                    <br />

                </td>
            </tr>

            <tr>
                <td>

                   <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
                   <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                   <br />

                </td>
            </tr>

            <tr>
                <td>

                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    <br />

                </td>
            </tr>

            <tr>
                <td>

                   <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                   <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Required" ControlToValidate="ConfirmPassword" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr>

            <tr>
                <td>

                   <asp:Label ID="Label5" runat="server" Text="E-Mail"></asp:Label>
                   <asp:TextBox ID="EMail" runat="server"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Required" ControlToValidate="EMail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr>

        </table>

        <p>
            <asp:Button ID="Button1" runat="server" Text="Save" />
        </p>

    </form>
</body>
</html>
