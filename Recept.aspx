<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recept.aspx.cs" Inherits="foodcorner.Recept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .btn {
            cursor: pointer;
            margin-top: 11px;
            background-color: rgb(253,176,34);
            color: antiquewhite;
            line-height: 29px;
            border-radius: 5px;
            border: 2px solid rgb(253,77,8);
            box-shadow: 0 10px 15px rgb(250,120,69);
        }

        .container .btn {
            margin: 36px 564px;
            margin-top: 21px;
            width: 237px;
        }

        .btn2 {
            cursor: pointer;
            margin-top: 11px;
            background-color: rgb(253,176,34);
            color: antiquewhite;
            line-height: 29px;
            border-radius: 5px;
            border: 2px solid rgb(253,77,8);
            box-shadow: 0 10px 15px rgb(250,120,69);
        }

        input#ContentPlaceHolder1_invoice {
            margin: 10px 560px;
            margin-top: 63px;
                width: 239px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td>Product Name:</td>
                    <td>
                        <asp:Label ID="lblproduct" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Full Name:</td>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:Label ID="lblmail" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                <tr>
                    <td>Date:</td>
                    <td>
                        <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:Label ID="lbladd" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>City:</td>
                    <td>
                        <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:Label ID="lblstate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Mobile No:</td>
                    <td>
                        <asp:Label ID="lblmobile" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Amount:</td>
                    <td>
                        <asp:Label ID="lblamount" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>


            </table>
        </asp:Panel>
        <asp:Button ID="invoice" CssClass="btn2" runat="server" Text="Download Invoice" OnClick="invoice_Click" />
        <asp:Button ID="go" runat="server" Text="GO BACk" OnClick="go_Click" CssClass="btn" />

    </div>

</asp:Content>
