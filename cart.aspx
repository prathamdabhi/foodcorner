<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="foodcorner.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/cartstyle.css" rel="stylesheet" />
    <style>
        .footer {
  background-color: rgb(227 161 98);
  width: 100%;
  text-align: center;
  position: absolute;
  bottom: 0px;
}
        .designer {
  opacity: 0.7;
  text-transform: uppercase;
  letter-spacing: 1px;
  font-weight: 400;
  margin: 0 5px;
  color: #df0707;
}
        .tblviewcart { 

    width:100%
}
        img {
    height: 90px;
    margin: 0px -24px;
    margin-left: auto;
}
       td {
    text-align: center;
}
        .delete{
            color:red;
            
        }
       
        span {
    font: initial;
    margin-left: 25px;
    font-weight: bold;
}
       span#ContentPlaceHolder1_lblFinalTotal {
    margin-left: -3px;
}
       .buy_now {
    cursor: pointer;
    /* margin-top: 11px; */
    background-color: rgb(253, 176, 34);
    color: antiquewhite;
    line-height: 25px;
    border-radius: 5px;
    border: 2px solid rgb(253, 77, 8);
    box-shadow: 0 10px 15px rgb(250, 120, 69);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h4 class="ProductViewCart" runat="server" id="h4noitem"></h4>
        <div class="product-head">
            <h5 class="title" runat="server">Product </h5>
            <h5 class="price" runat="server">Price </h5>
            <h5 class="quentity" runat="server">Quentity </h5>
            <h5 class="total" runat="server">Total </h5>
        </div>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table tblviewcart"  
            >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <img src="/image/product-images/<%# Eval("pid") %>/<%# Eval("ImageName") %>" alt="<%# Eval("ImageName") %>" style="height:90px" />
                       
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                       <%--<label id="pname"><%# Eval("pname") %></label>--%>
                        <asp:Label ID="productname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                        
                        
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:TemplateField>
                    <ItemTemplate>
                       <asp:DropDownList ID="ddlQty" runat="server" OnSelectedIndexChanged="ddlQty_OnSelectedIndexChanged" AutoPostBack="true">
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
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField>
                    <ItemTemplate>                       
                       Rs.  <asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label>
                        
                    </ItemTemplate>
                </asp:TemplateField>

                
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Label ID="lblPID" runat="server" Text='<%# Eval("pid") %>' Visible="false"></asp:Label>

                        <asp:Label ID="lblName" runat="server" Text='<%#Eval("pname")%>' Visible="false"></asp:Label>

                        <asp:LinkButton ID="lnkDelete" CssClass="delete" runat="server" CommandName="RowDelete" CommandArgument='<%#Eval("pid") %>'
                                        OnCommand="lnkDelete_OnCommand" ToolTip="Remove">Remove</asp:LinkButton>
                      
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

        <div class="totalcontainer">
            <h4 class="totaltitle">Basket Total
    </h4>
            <h4 class="baskettotal">
                ₹ <asp:Label ID="lblFinalTotal" runat="server" Text="0"></asp:Label>
            </h4>
            <br />
            <p class="baskettotal">
                <asp:Button ID="buy_now" CssClass="buy_now" runat="server" Text="BUY NOW" OnClick="buy_now_Click" />
            </p>
        </div>
    </div>

</asp:Content>