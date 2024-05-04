<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="foodcorner.Testing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Cookies_Store" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Cookies_Display" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Cookies-update" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="cookies display using array" OnClick="Button4_Click" />
</asp:Content>
