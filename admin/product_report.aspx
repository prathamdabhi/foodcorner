<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="product_report.aspx.cs" Inherits="foodcorner.admin.product_report" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        div#ctl00_ContentPlaceHolder1_ReportViewer1 {
            height: 435px;
            width: 1151px;
        }
.nav ul li {
    padding: 10px 15px;
    font-size: 15px;
    font-weight: bold;
    margin: 0px 38px;
}
ul li ul.dropdown-menu li{
    display:block;
}
        .footer {
    background-color: rgb(227 161 98);
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
}
        span.designer {
            opacity: 0.7;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 400;
            margin: 0 5px;
            color: #df0707;
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
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="padding:15px">
        <div align="center" style="font-size:30px">Product Info</div>
        <div align="center">
            <asp:Button ID="load" runat="server" Text="Load Report" BackColor="#FF3300" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="42px" Width="143px" OnClick="load_Click" />
<br />
<br />
 
            <br />
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="442px" Width="1104px">
            </rsweb:ReportViewer>
 
        </div>
    </div>


    &nbsp;<br />
    <br />
&nbsp;


</asp:Content>
