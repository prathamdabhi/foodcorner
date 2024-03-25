<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ppreport.aspx.cs" Inherits="foodcorner.ppreport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        div#ctl00_ContentPlaceHolder1_ReportViewer1 {
    height: auto;
    width: auto;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="padding:15px">
        <div align="center" style="font-size:30px">Invoice Information</div>
        <div align="center">
            <asp:Button ID="Load" runat="server" Text="Load Report" BackColor="#660066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="43px" Width="154px" OnClick="Load_Click" />
            <br />
            <br />
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="886px">
            </rsweb:ReportViewer>
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>
