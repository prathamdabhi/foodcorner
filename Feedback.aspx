<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="foodcorner.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link
     rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
     integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqLDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
     crossorigin="anonymous" />
    <link rel="stylesheet" href="css/main.css" />
    <style>
       .header {
    font-size: 16px;
}
       .designer {
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
    <div class="bg-body">
    <div class="feedback-container">
        <h1>Give us your valuable feedback</h1>
        <p>Your feedback is very important to use</p>
        <div class="emoji-box">

            <asp:Button ID="high" runat="server" CssClass="btn normal" Text="😂" />
            <asp:Button ID="high2" runat="server" CssClass="btn normal" Text="😃" />
            <asp:Button ID="midum" runat="server" CssClass="btn normal" Text="😇" />
            <asp:Button ID="midum2" runat="server" CssClass="btn normal" Text="😓" />
            <asp:Button ID="low" runat="server" CssClass="btn normal" Text="😄" />
            <asp:Button ID="lowest" runat="server" CssClass="btn normal" Text="😍" />

        </div>
        <p class="question">What you want to say?</p>
        <textarea id="textarea" cols="20" rows="5"></textarea>
        <p class="question">Are you want to share this Publickly?</p>
        <div class="radio-btn">
            <div class="one-btn">
                <input type="radio" name="one" id="yes" />
                <label for="yes">Yes</label>
            </div>
            <div class="one-btn">
                <input type="radio" name="one" id="no" />
                <label for="no">No</label>
            </div>
        </div>
        <div class="Info-field">
            <div class="name">
                <label>
                    <input type="text" class="input1" placeholder=" " required />
                    <span class="span2">Nickname</span>

                </label>
            </div>
            <div class="email">
                <label>
                    <input type="email" class="input2" placeholder=" " required />
                    <span class="span2">Email Address</span>
                </label>
            </div>
        </div>
        <div class="accept">
            <input type="radio" id="accept" />
            <label>I accept the <a href="#">terms and conditions</a></label>
        </div>
        <div class="center">
            <asp:Button ID="Button1" CssClass="btn button" runat="server" Text="Send" OnClick="Button1_Click" />
        </div>
    </div>
</div>
</asp:Content>
