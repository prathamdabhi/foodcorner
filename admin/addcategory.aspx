<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="foodcorner.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/addcategorystyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="hrizontal">
            <br />
            <br />
            <h2> Add Category</h2>
            <hr />
            <br />
            
        <div class="form-group">
    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Category"></asp:Label>
    <div class="col3">
        
        <asp:TextBox ID="txtcategory" CssClass="product-name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatoradd" runat="server" ErrorMessage="plz Enter Brand" ControlToValidate="txtcategory" ForeColor="Red"></asp:RequiredFieldValidator>

    </div>

</div>
      <div class="form-group">
     <asp:Button ID="btncategory" CssClass="btn-category" runat="server" Text="Add category" OnClick="btncategory_Click" />

      </div>
     </div>
         <h2> Category</h2>  
   <hr />
   <div class="pannel-brand">
       <div class="pannel-heading">
           <asp:Repeater ID="rptrcategory" runat="server">
               <HeaderTemplate>
                    <table class="table">
                      <thead>
                       <tr>
                       <th>#</th>
                       <th>Category</th>
                        <th>Edit</th>
                        </tr>    
                     
                      </thead>
                         <tbody>
               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                  <th><%# Eval("categoryid") %></th>
                 <td><%# Eval("categoryname") %></td>
                  <td>Edit</td>
                   </tr>
               </ItemTemplate>

               <FooterTemplate>
                       </tbody>

                       </table>
               </FooterTemplate>

           </asp:Repeater>
          
                   
              
       </div>
   </div>
    </div>
</asp:Content>
