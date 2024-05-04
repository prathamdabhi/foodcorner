<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new payment.aspx.cs" Inherits="foodcorner.new_payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Check Out</title>
    <link href="css/checkoutstyle.css" rel="stylesheet" />

</head>
<body>
    <div class="container">
        <form action="" runat="server">
            <div class="row">
                <div class="col">
                    <h3 class="title">Billing Address</h3>
                    <div class="inputbox">
                        <asp:Label ID="lblpid" runat="server" Text="ID" Visible="false"></asp:Label>
                        &nbsp;
            <asp:Label ID="lblid" runat="server" Text="Label" Visible="false"></asp:Label>
                        <asp:Label ID="lblnumber" runat="server" Text="0" Visible="false"></asp:Label>
                        <label>Full Name:</label>
                        <%--<input type="text" placeholder="pratham" />--%>
                        <asp:TextBox ID="checktxt" runat="server" placeholder="pratham"></asp:TextBox>
                    </div>
                    <div class="inputbox">
                        <label>Email:</label>
                        <%--<input type="email" placeholder="prathamdabhi@gmail.com" />--%>
                        <asp:TextBox ID="checkmail" runat="server" placeholder="prathamdabhi@gmail.com"></asp:TextBox>
                    </div>
                    <div class="inputbox">
                        <label>Address:</label>
                        <%--<input type="text" placeholder="Room no-street-pincode" />--%>
                        <asp:TextBox ID="checkaddress" runat="server" placeholder="Room no-street-pincode"></asp:TextBox>
                    </div>
                    <div class="inputbox">
                        <label>City:</label>
                        <%--<input type="text" placeholder="Virar(East)" />--%>
                        <asp:TextBox ID="checkcity" runat="server" placeholder="Virar(East)"></asp:TextBox>
                    </div>
                    <div class="flex">
                        <div class="inputbox">
                            <label>State:</label>
                            <%--<input type="text" placeholder="India">--%>
                            <asp:TextBox ID="checkstate" runat="server" placeholder="India"></asp:TextBox>
                        </div>
                        <div class="inputbox">
                            <span>Zip Code:</span>
                            <%--<input type="text" placeholder="123 456" />--%>
                            <asp:TextBox ID="checkzip" runat="server" placeholder="123 456"></asp:TextBox>
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
                    </div>

                    <div class="inputbox">
                        <span>Creadiit Card Number:</span>
                        <%--<input type="number" placeholder="1111-2222-3333-4444" />--%>
                        <asp:TextBox ID="number" runat="server" placeholder="1111-2222-3333-4444"></asp:TextBox>
                    </div>
                    <div class="inputbox">
                        <span>Exp Month:</span>
                        <%-- <input type="text" placeholder="March" />--%>
                        <asp:TextBox ID="month" runat="server" placeholder="March"></asp:TextBox>
                    </div>
                    <div class="flex">
                        <div class="inputbox">
                            <span>Exp Year:</span>
                            <%--<input type="number" placeholder="2024" />--%>
                            <asp:TextBox ID="year" runat="server" placeholder="2024"></asp:TextBox>
                        </div>
                        <div class="inputbox">
                            <label>Mobile No:</label>
                            <%-- <input type="number" placeholder="1111111111" />--%>
                            <asp:TextBox ID="mno" runat="server" placeholder="1111111111"></asp:TextBox>
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
