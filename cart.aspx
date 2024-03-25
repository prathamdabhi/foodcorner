<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="foodcorner.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cartstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4 class="ProductViewCart" runat="server" id="h4noitem"></h4>
        <div class="product-head">
            <h5 class="title" runat="server"> Product </h5>
            <h5 class="price" runat="server"> Price </h5>
            <h5 class="quentity" runat="server"> Quentity </h5>
            <h5 class="total" runat="server"> Total </h5>
        </div>

           <asp:ListView ID="rptrcart" runat="server">
        <ItemTemplate>
    
    <div class="products">
        <asp:Label ID="lblpid" runat="server" Text='<%# Eval("pid") %>' Visible="false"></asp:Label>
    <i class="fa-solid fa-square-x"></i>
        <a href="menu.aspx?pid=<%# Eval("pid") %>" target="_blank">
        <img src="/image/product-images/<%# Eval("pid") %>/<%# Eval("ImageName") %>" alt="<%# Eval("ImageName") %>" />
            </a>
        <label ID="pname"><%# Eval("pname") %></label>
        
        <div class="price" runat="server">
           <p class="pp"><%# Eval("pprice") %></p> </div>
        <div class="quentity"> 
            <asp:DropDownList ID="drop_qty" runat="server" OnSelectedIndexChanged="drop_qty_SelectedIndexChanged"  AutoPostBack="true">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="total">
           <p class="p"> <asp:Label ID="Label3" runat="server" Text="Label">₹200</asp:Label> </p>
        </div>
        <asp:Button ID="remove_product"  runat="server" Text="x" BackColor="Red" ForeColor="White" OnClick="remove_product_Click" />

</div>
            </ItemTemplate>
        </asp:ListView>
     <div class = "totalcontainer">
    <h4 class="totaltitle">
    Basket Total
    </h4>
    <h4 class="baskettotal">
        <asp:Label ID="Label1" runat="server" Text="baskettotal">₹ </asp:Label> 
    </h4> <br />
         <p class="baskettotal">
             <asp:Button ID="buy_now" runat="server" Text="BUY NOW" OnClick="buy_now_Click" />
    </p>
    </div>
    </div>
    
</asp:Content>
