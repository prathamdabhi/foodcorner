<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addbrand.aspx.cs" Inherits="foodcorner.addbrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/addbrandstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="hrizontal">
            <br />
            <br />
            <h2> Add Brand</h2>
            <hr />
            <br />
            
        <div class="form-group">
    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Brand"></asp:Label>
    <div class="col3">
        
        <asp:TextBox ID="txtbrand" CssClass="product-name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatoradd" runat="server" ErrorMessage="plz Enter Brand" ControlToValidate="txtbrand" ForeColor="Red"></asp:RequiredFieldValidator>

    </div>

</div>
      <div class="form-group">
     <asp:Button ID="btnbrand" CssClass="btn-brand" runat="server" Text="Add Brand" OnClick="btnbrand_Click" />

      </div>
     </div>
       
      <h2> Brand</h2>  
        <hr />
        <div class="pannel-brand">
            <div class="pannel-heading">
                <asp:Repeater ID="rptrbrand" runat="server">
                    <HeaderTemplate>
                         <table class="table">
                           <thead>
                            <tr>
                            <th>#</th>
                            <th>Brand</th>
                             <th>Edit</th>
                             </tr>    
                          
                           </thead>
                              <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                       <th><%# Eval("brandid") %></th>
                      <td><%# Eval("name") %></td>
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
