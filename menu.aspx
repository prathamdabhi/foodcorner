<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="foodcorner.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/menustyle.css" rel="stylesheet" />
            <style>
  .nav ul li {
   padding: 10px 3px;
   font-size: 15px;
   font-weight: bold;
   }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ListView ID="lvproduct" runat="server" OnItemDataBound="lvproduct_ItemDataBound" >
            <ItemTemplate>
                <div class="container">
                    <div class="row">
                        <div>
                            <img src="/image/product-images/<%# Eval("pid") %>/<%# Eval("ImageName") %><%# Eval("extention") %>" alt="<%# Eval("ImageName") %>" style="height: 200px;" />

                        </div>
                        <asp:Label ID="lblpid" runat="server" Text='<%# Eval("pid") %>' Visible="false"></asp:Label>
                        <asp:Label ID="lblImageName" runat="server" Text='<%#Eval("ImageName") +""+ Eval("extention") %>' Visible="false" ></asp:Label>
                        
                        <h2> <asp:Label ID="lblPName" runat="server" Text='<%# Eval("pname") %>'></asp:Label> </h2>
                       <%-- <p> <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("pdescription") %>'></asp:Label> </p>--%>
                        <p> <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("status") %>'></asp:Label> </p>
                        <p class="p">  <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("pprice") %>'></asp:Label></p>
                        <asp:Button CssClass="book-btn" ID="btnadd" Text="Add To Cart" runat="server" OnClick="btnadd_Click" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>


</asp:Content>
