<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="foodcorner.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/headstyle.css" rel="stylesheet" />
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
        .footer {
    background-color: rgb(227 161 98);
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
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
span.designer {
    opacity: 0.7;
    text-transform: uppercase;
    letter-spacing: 1px;
    font-weight: 400;
    margin: 0 5px;
    color: #df0707;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="logo">
    <h1 class="h3">Welcome</h1>
    <h1>Admin</h1>
</div>
    <p> &nbsp;</p>
    <p> &nbsp;</p>
    <p> &nbsp;</p>
</asp:Content>
