<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="foodcorner.ThankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         table.style1 {
    padding: 2rem;
    font-family: "Roboto", sans-serif;
    box-sizing: border-box;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: linear-gradient(100deg, #fdcd3b 60%, #ffed4b 60%);
}
     .style1
     {
         width: 100%;
         height: 154px;
     }
     .btn{
        
    cursor: pointer;
    margin-top: 11px;
    background-color: rgb(253, 176, 34);
    color: antiquewhite;
    line-height: 29px;
    border-radius: 5px;
    border: 2px solid rgb(253, 77, 8);
    box-shadow: 0 10px 15px rgb(250,120,69);

     }
     td {
    text-align:center;
}
     h1 {
    color: red;
}
     h2 {
    /* font-family: mv boli; */
    font-family: math;
    font-size: 52px;
}
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="style1">
     <tr>
         <td style="color: #FFFFCC; font-weight: bold; font-size: xx-large">
             <br />
             <h1>Thank </h1> <h2>you for Shopping...</h2></td>
     </tr>
     <tr>
         <td>
             <br />
             <asp:Button ID="Button1" runat="server" CssClass="btn" 
                 PostBackUrl="Feedback.aspx" Text="Continew Shopping" />
         </td>
     </tr>
 </table>
</asp:Content>
