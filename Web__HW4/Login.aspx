<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_4.WebHW4.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-color: #f1cb0c; text-align:center">
    <div class="header">
        <h1> Dalin</h1>
        <h2> Baby Products</h2>
        <h3> Best for you and your baby </h3>
    </div>

    <form id="form2" runat="server">
        <div>
            <table>
                
                <tr>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text="E-mail: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server" BackColor="#FFFF66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="email" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="passwordLabel" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" BackColor="#FFFF66" OnTextChanged="password_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="password"  ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr>
                    <td colspan="2">
                        <asp:Label ID="wrongInput" runat="server" ForeColor="Red" Text=""></asp:Label>
                    </td>
                </tr> 
                <tr>
                    <td>
                        <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" />
                    </td>
                    <td>
                        <asp:Button ID="signup" runat="server" Text="Go to SignUp" OnClick="signup_Cliced" CausesValidation="false"/>
                    </td>
                </tr> 
            </table>
        </div>  
    </form>
</body>
</html>
