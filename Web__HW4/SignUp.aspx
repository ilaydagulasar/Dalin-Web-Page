<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment_4.WebHW4.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sign Up Page</title> 
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body style="background-color: #f1cb0c; text-align:center">

    <div class="header">
        <h1> Dalin</h1>
        <h2> Baby Products</h2>
        <h3> Best for you and your baby </h3>
    </div>

    <form id="myForm" runat="server">
        <div id="form1" runat="server">
            <table>



                <tr>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text="NAME"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server" BackColor="#FFFF66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="name" ForeColor="red"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Label ID="passwordLabel" runat="server" Text="PASSWORD"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" BackColor="#FFFF66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required"  ControlToValidate="password" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Label ID="surnameLabel" runat="server" Text="SURNAME"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="surname" runat="server" BackColor="#FFFF66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="surname" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text="e-mail: "></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="email" runat="server" BackColor="#FFFF66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="email" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Label ID="genderLabel" runat="server" Text="GENDER"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="gender" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="birthdayLabel" runat="server" Text="BIRTHDAY"></asp:Label>
                    </td>   
                    <td>
                        <asp:TextBox ID="birthday" runat="server" textmode="Date" BackColor="#FFFF66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="birthday" ForeColor="red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                 <tr>
                    <td>
                        <asp:Button ID="signUp" runat="server" Text="Sign Up" Width="85px" OnClick="signUp_Click" style="height: 26px" />
                    </td>
                    <td>
                        <asp:Button ID="login" runat="server" Text="Go to Login Page" Width="85px" OnClick="login_Click" style="width: 120px" CausesValidation="false"/>
                   </td>
                </tr>

            </table>


        </div>  
        <div style="text-align: center"> 
            <asp:Label ID="successful" runat="server" Text="Saved successfully. You will redirect to Home Page in 5 seconds." ForeColor="#009933" Font-Size="25px"></asp:Label>
            <asp:Label ID="failiure" runat="server" Text="Some problem occured. Try again." ForeColor="Red" Font-Size="25px"></asp:Label>
        </div>
    </form>
</body>
</html>
