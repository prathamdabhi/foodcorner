<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="foodcorner.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Check Out</title>
    <link href="css/checkoutstyle.css" rel="stylesheet" />

</head>
<body>
    <div class="container">
        <form runat="server">
            <div class="row">
                <div class="col">
                    <h3 class="title">Billing Address - Total <asp:Literal ID="grandTotal" runat="server"></asp:Literal></h3>
                    <div class="inputbox">
                        <asp:Label ID="lblpid" runat="server" Text="ID" Visible="false"></asp:Label>
                        &nbsp;
            <asp:Label ID="lblid" runat="server" Text="Label" Visible="false"></asp:Label>
                        <asp:Label ID="lblnumber" runat="server" Text="0" Visible="false"></asp:Label>
                        <label>Full Name:</label>
                        <%--<input type="text" placeholder="pratham" />--%>
                        <asp:TextBox ID="checktxt" runat="server" placeholder="pratham"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validation_name" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="checktxt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputbox">
                        <label>Email:</label>
                        <%--<input type="email" placeholder="prathamdabhi@gmail.com" />--%>
                        <asp:TextBox ID="checkmail" runat="server" placeholder="prathamdabhi@gmail.com"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validation_male" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="checkmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="checkmail" ForeColor="#6666FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="inputbox">
                        <label>Address:</label>
                        <%--<input type="text" placeholder="Room no-street-pincode" />--%>
                        <asp:TextBox ID="checkaddress" runat="server" placeholder="Room no-street-pincode"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validation_address" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="checkaddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputbox">
                        <label>City:</label>
                        <%--<input type="text" placeholder="Virar(East)" />--%>
                        <asp:TextBox ID="checkcity" runat="server" placeholder="Virar(East)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validation_city" runat="server" ErrorMessage="Please Enter city" ControlToValidate="checkcity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="flex">
                        <div class="inputbox">
                            <label>State:</label>
                            <%--<input type="text" placeholder="India">--%>
                            <asp:TextBox ID="checkstate" runat="server" placeholder="India"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validation_state" runat="server" ErrorMessage="Please Enter state" ControlToValidate="checkstate" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="inputbox">
                            <span>Postal Code:</span>
                            <%--<input type="text" placeholder="123 456" />--%>
                            <asp:TextBox ID="checkzip" runat="server" placeholder="123 456"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="validation_zipcode" runat="server" ErrorMessage="Please Enter Postal Code " ControlToValidate="checkzip" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="validation_zipcode2" runat="server" ErrorMessage="Invalid Postal Code" ControlToValidate="checkzip" ForeColor="#6666FF" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        </div>

                    </div>
                </div>
                <div class="col">
                    <h3 class="title">Payment</h3>
                    <div class="inputbox">
                        <span>Card Accepted</span>
                        <img src="./images/card_img.png" alt="" />
                    </div>
                    <div class="inputbox">
                        <span>Name on Card:</span>
                        <%--<input type="text" placeholder="pratham" />--%>
                        <asp:TextBox ID="noc" runat="server" placeholder="pratham"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="validation_noc" runat="server" ErrorMessage="Please Enter proper name " ControlToValidate="noc" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="inputbox">
                        <span>Creadit Card Number:</span>
                        <%--<input type="number" placeholder="1111-2222-3333-4444" />--%>
                        <asp:TextBox ID="number" runat="server" placeholder="1111-2222-3333-4444"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="validation_number" runat="server" ErrorMessage="Please Enter Creadit card number" ControlToValidate="number" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Credit Card Number" ControlToValidate="number" ForeColor="#6666FF" ValidationExpression="\d{16}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="inputbox">
                       <%-- <span>Exp Month:</span>
                        <%-- <input type="text" placeholder="March" />--%>
                       <%-- <asp:TextBox ID="month" runat="server" placeholder="March"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Creadit card number" ControlToValidate="number" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="flex"> 
                        <div class="inputbox">
                            <span>Date:</span>
                            <%--<input type="number" placeholder="2024" />--%>
                            <asp:TextBox ID="date" runat="server" placeholder="2024" type="date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validation_exyear" runat="server" ErrorMessage="Please Enter Date" ControlToValidate="date" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="inputbox">
                            <label>Mobile No:</label>
                            <%-- <input type="number" placeholder="1111111111" />--%>
                            <asp:TextBox ID="mno" runat="server" placeholder="1111111111"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="validation_mno" runat="server" ErrorMessage="Please Enter your Mobile Number" ControlToValidate="mno" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Number" ControlToValidate="mno" ForeColor="#6666FF" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        </div>

                    </div>
                </div>
            </div>
            <%--<input type="submit" value="Proceed To Check" class="submit-btn" />--%>
            <asp:Button ID="submit" runat="server" Text="Proceed To Check" CssClass="submit-btn" OnClick="submit_Click" />
        </form>
    </div>
</body>
</html>

