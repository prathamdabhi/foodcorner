<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="foodcorner.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>forgot password page</title>
    <link href="css/forgotpwdstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-horizontal">
                <h2>
                   Recover Password
                </h2>
                <hr />
                <h3> Please Enter Your Email Address We will send you the recovery link for your password</h3>

                <div class="form-group">
                    <asp:Label ID="lblemail" runat="server" Text="Enter Your Email Address:" CssClass="span"></asp:Label> <br />
                    <asp:TextBox ID="txtemail" runat="server" CssClass="input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="recoverpassword" runat="server" ErrorMessage="Enter Your Email" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <div></div>
                    <div class="send" >
                        <asp:Button ID="btnresetpwd" runat="server" Text="Send" OnClick="btnresetpwd_Click" />
                        <asp:Label ID="lblpwd" runat="server" ></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
    
</body>
</html>
