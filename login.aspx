<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="foodcorner.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/loginstyle.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <br />
        <br />
        <form class="login-form" runat="server">
            <h2>Login</h2>
            <hr />
            <br />
            <br />
            <span>User Name:</span>
            <asp:TextBox ID="name" runat="server" CssClass="input" placeholder="Enter Your User Name "></asp:TextBox>
            <asp:RequiredFieldValidator ID="valname" runat="server" ErrorMessage="Please Fill Name" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
            <span>Email:</span>
            <asp:TextBox ID="email" runat="server" placeholder="Enter Your Email" CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validateemail" runat="server" ErrorMessage="Enter Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ForeColor="#6666FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <span>Password:</span>
            <asp:TextBox ID="password" runat="server" placeholder="Enter Your Password" CssClass="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatepassword" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator><br />
            <asp:Button ID="loginbtn" runat="server" Text="Login" CssClass="login-btn" Font-Bold="True" ForeColor="White" OnClick="loginbtn_Click" />
            <br />
            <br />
            <hr />
            <br />
            <div class="forget">
                <div>
                    <p>Forget Password?</p>
                    Click <a href="forgotpassword.aspx">here</a>
                </div>

                <div>
                    <p>Don't have an acoount? </p>
                    Click <a href="register.aspx">here</a>
                </div>
            </div>



        </form>

    </div>

</body>
</html>
