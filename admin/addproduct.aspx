<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="foodcorner.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../css/addproductstyle.css" rel="stylesheet" />
    <style>
                .nav ul li {
    padding: 10px 15px;
    font-size: 15px;
    font-weight: bold;
    margin: 0px 38px;
}
ul li ul.dropdown-menu li{
    display:block;
}
ul li ul.dropdown-menu{
    width:18%;
    background-color:rgb(248,232,217);
    position:absolute;
    z-index:999;
    display:none;
}
ul li a:hover{
    color: rgb(253, 57, 8);
}
ul li:hover ul.dropdown-menu{
    display:block;
}
.logo {
    display: flex;
    justify-content: center;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="horizontal">
            <br />
            <br />
            <h2> Add Product</h2>
            <br />

            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Name"></asp:Label>
                <div class="col3">
                    
                    <asp:TextBox ID="txtproductname" CssClass="product-name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoradd" runat="server" ErrorMessage="plz Enter Product name" ControlToValidate="txtproductname" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>

            </div>

    <div class="form-group">
    <asp:Label ID="Label2" runat="server"  CssClass="control-label" Text="Price"></asp:Label>
    <div class="col3">
        
        <asp:TextBox ID="txtprice" CssClass="product-name" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="plz Enter Product Price" ControlToValidate="txtprice" ForeColor="Red"></asp:RequiredFieldValidator>


    </div>

   </div>

    <div class="form-group">
    <asp:Label ID="Label3" runat="server"  CssClass="control-label" Text="Selling"></asp:Label>
    <div class="col3">
        
        <asp:TextBox ID="txtselling" CssClass="product-name" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="plz Enter Product selling Price" ControlToValidate="txtselling" ForeColor="Red"></asp:RequiredFieldValidator>

    </div>

     </div>

    <div class="form-group">
    <asp:Label ID="Label4" runat="server"  CssClass="control-label" Text="Brand"></asp:Label>
    <div class="col3">
        
        <asp:DropDownList ID="ddlBrand" runat="server"></asp:DropDownList>

    </div>

    </div>
    <div class="form-group">
      <asp:Label ID="Label5" runat="server"  CssClass="control-label" Text="Category"></asp:Label>
      <div class="col3">
    
    <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>

    </div>

     </div>

       <div class="form-group">
       <asp:Label ID="Label6" runat="server"  CssClass="control-label" Text="Description"></asp:Label>
       <div class="col3">
     
     <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="product-name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="plz Enter Product description" ControlToValidate="txtDescription" ForeColor="Red"></asp:RequiredFieldValidator>

      </div>

      </div>
        

         <div class="form-group">
         <asp:Label ID="Label7" runat="server"  CssClass="control-label" Text="Upload Image"></asp:Label>
          <div class="col3">
     
              <asp:FileUpload ID="fuimg1" CssClass="control-label" runat="server" />

      </div>

       </div>

           <div class="form-group">
   <asp:Label ID="Label8" runat="server"  CssClass="control-label" Text="Upload Image"></asp:Label>
    <div class="col3">
     
        <asp:FileUpload ID="fuimg2" CssClass="control-label" runat="server" />

         </div>

         </div>

         <div class="form-group">
             <asp:Label ID="Label9" runat="server"  CssClass="control-label" Text="Upload Image"></asp:Label>
         <div class="col3">
  
             <asp:FileUpload ID="fuimg3" CssClass="control-label" runat="server" />

        </div>

        </div>

         <div class="form-group">
           <asp:Label ID="Label10" runat="server"  CssClass="control-label" Text="Upload Image"></asp:Label>
         <div class="col3">
  
           <asp:FileUpload ID="fuimg4" CssClass="control-label" runat="server" />

         </div>

          </div>

         <div class="form-group">
     <asp:Label ID="Label11" runat="server"  CssClass="control-label" Text="Upload Image"></asp:Label>
 <div class="col3">
  
     <asp:FileUpload ID="fuimg5" CssClass="control-label" runat="server" />

</div>

</div>

      <div class="form-group">
     <asp:Label ID="Label12" runat="server"  CssClass="control-label" Text="Free Delivery"></asp:Label>
 <div class="col3">
  
     <asp:CheckBox ID="chfd" runat="server" />

</div>

</div>

     <div class="form-group">
     <asp:Label ID="Label13" runat="server"  CssClass="control-label" Text="COD"></asp:Label>
 <div class="col3">
  
     <asp:CheckBox ID="COD" runat="server" />

</div>

</div>

      <div class="form-group">
          <asp:Button ID="btnadd" CssClass="btn-add" runat="server" Text="Add Product" OnClick="btnadd_Click" />

           <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
 <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>

      </div>
        
            <hr />
             <br />
            <h5>Product List</h5>
            <br />
            <div class="grid-table">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="grid-table">
                <Columns >
                    
                    <asp:BoundField HeaderText="ID" DataField="pid" HeaderStyle-CssClass="header-data"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            
                            <img src="/image/product-images/<%# Eval("pid") %>/<%# Eval("ImageName") %><%# Eval("extention") %>" alt="<%# Eval("ImageName") %>" style="height:60px;" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Prodtct Name" DataField="pname" HeaderStyle-CssClass="header-data" />
                    <asp:BoundField HeaderText="Prodtct Price" DataField="pprice" HeaderStyle-CssClass="header-data" />
                    <asp:BoundField HeaderText="Selling Price" DataField="pselprice" HeaderStyle-CssClass="header-data" />
                </Columns>
            </asp:GridView>
                </div>

        



    
     </div>
    </div>
</asp:Content>
