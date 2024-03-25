<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="foodcorner.Report" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        div#ctl00_ContentPlaceHolder1_ReportViewer1 {
    height: 435px;
    width: 1151px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div style="padding:15px">
        <div align="center" style="font-size:30px">User Info Report</div>
        <div align="center">
            <asp:Button ID="load" runat="server" Text="Load Report" BackColor="#FF3300" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="42px" Width="143px" OnClick="load_Click" />
            <br />
            <br />
             
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1104px" Height="435px">
            </rsweb:ReportViewer>
            <br />
            <br />
            <br />
            </div>
        </div>
            </asp:Content>
