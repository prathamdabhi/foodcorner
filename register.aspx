<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="foodcorner.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="css/registerstyle.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <br />
        <br />
        <form class="login-form" runat="server">
            <h2>Register</h2>
            <hr />
            <br />
            <br />
            <asp:Label ID="uid" runat="server" Text="ID" Visible="false"></asp:Label>
            &nbsp;
            <asp:Label ID="uidr" runat="server" Text="Label" Visible="false"></asp:Label>
            <span>User Name:</span>
            <asp:TextBox ID="name" runat="server" CssClass="input" placeholder="Enter Your User Name "></asp:TextBox>
            <asp:RequiredFieldValidator ID="valname" runat="server" ErrorMessage="Please Fill Name" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
            <span>First Name:</span>
            <asp:TextBox ID="fname" runat="server" CssClass="input" placeholder="Enter Your Firts Name "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill First Name" ForeColor="Red" ControlToValidate="fname"></asp:RequiredFieldValidator>
            <span>Last Name:</span>
            <asp:TextBox ID="lname" runat="server" CssClass="input" placeholder="Enter Your Last Name "></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill Last Name" ForeColor="Red" ControlToValidate="lname"></asp:RequiredFieldValidator>
            <span>Email:</span>
            <asp:TextBox ID="email" runat="server" CssClass="input" placeholder="Enter Your Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valmail" runat="server" ErrorMessage="Please Fill Email" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ForeColor="#6666FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <span>Password:</span>
            <asp:TextBox ID="password" runat="server" CssClass="input" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valpassword" runat="server" ErrorMessage="Please Fill password" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
            <span>Conform Password:</span>
            <asp:TextBox ID="conform" runat="server" CssClass="input" placeholder="Enter Password To Conform" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill Password for Check" ForeColor="Red" ControlToValidate="conform"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="compass" runat="server" ErrorMessage="password is not match" ControlToValidate="conform" ControlToCompare="password" ForeColor="Red"></asp:CompareValidator>
            <asp:Button ID="registerbtn" runat="server" Text="Register" CssClass="login-btn" OnClick="registerbtn_Click" />
            <asp:Label ID="lblmsg" runat="server" Text="Label" ForeColor="White"></asp:Label>
            <br />
            <br />
            <hr />
            <br />
        </form>

    </div>

</body>
</html>
