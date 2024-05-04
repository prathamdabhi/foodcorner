<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="foodcorner.about_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/aboutstyle.css" rel="stylesheet" />
        <style>
        .nav ul li {
    padding: 10px 3px;
    font-size: 15px;
    font-weight: bold;
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
      <div class="about" id="About">
      <div class="about_main">

          <div class="image">
              <img src="image/Food-Plate.png" />
          </div>

          <div class="about_text">
              <h1><span>About</span>Us</h1>
              <h3>Why Choose us?</h3>
              <p>
                  Enjoy Fresh Food: Our menu has tasty dishes made from local ingredients. From bold flavors to comforting classics, we've got something for everyone.
                  We make ordering easy, delivering quality meals right to your door.
                  Trust us to make mealtime hassle-free and delicious. Try us out today and taste the difference!
              </p>
          </div>

      </div>

      <a href="menu.aspx" class="about_btn">Order Now</a>

  </div>
</asp:Content>
