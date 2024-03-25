<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="foodcorner.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/contactstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact">
        <div class="container">
            <h2> Contact us</h2>
            <div class="contact-wrapper">
                <div class="contact-form">
                    <h3> Send us a Message</h3>
                    
                        <div class="form-group">
                            <span>Your Name:</span>
                            
                             <asp:TextBox ID="yourname" runat="server" placeholder="Pratham Dabhi"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="validation_yourname" runat="server" ErrorMessage="Please Enter your Full Name" ControlToValidate="yourname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <span>Your Email:</span>
                              <asp:TextBox ID="yourEmail" runat="server" placeholder="prathamdabhi@gmail.com"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="validation_yourmail" runat="server" ErrorMessage="Please Enter your E-mail" ControlToValidate="yourEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" ControlToValidate="yourEmail" ForeColor="#6666FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <span>Your Message:</span>
                            <asp:TextBox ID="yourmessage" runat="server" placeholder="Type your message" TextMode="MultiLine"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="validation_message" runat="server" ErrorMessage="Please Enter your message" ControlToValidate="yourmessage" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="sendbut" runat="server" CssClass="button" Text="Send Your Message" OnClick="sendbut_Click" />
                    
                </div>
                <div class="contact-info">
                    <h3> Contact Information</h3>
                    <p><i class="fas fa-phone"></i> 726406****</p>
                    <p><i class="fas fa-envelope"></i>pratham@gmail.com</p>
                    <p><i class="fas fa-map-marker-alt"></i>Address</p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
