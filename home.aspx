<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="foodcorner.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/homestyle.css" rel="stylesheet" />
    <style>
        .nav ul li {
    padding: 10px 3px;
    font-size: 15px;
    font-weight: bold;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="home">
    <div class="main">
        <div>
            <h1>Enjoy <span>Delicious Food</span> in Your Healthy Life</h1>
            <p>
                Whether you're looking for a quick weekday dinner idea, planning a festive feast, or just craving some foodie inspiration,FOOD CORNER is your virtual kitchen companion. Let the journey to deliciousness begin!"
            </p>
            <%--<button class="btn"> View Menu <i class="fa-solid fa-arrow-right-long"></i> </button>--%>
            <asp:Button ID="view" CssClass="btn" runat="server" Text="View Menu" OnClick="view_Click" />
        </div>
        <div>
            <img src="image/uiburger.png" alt="photo of the food" style="height:486px; width:435px;" />
        </div>

    </div>
    <div class="food-item">
        <div class="items">
            <div>
                <img src="image/pizza2.jpg" alt="pizza1 image" />
            </div>
            <h3> food name</h3>
            <p> pizza image</p>
            <asp:Button class="white-button" ID="btn1" Text="Book Order" runat="server" OnClick="btn1_Click"  />
        </div>
        <div class="items">
            <div>
                <img src="image/burger1.jfif" alt="pizza1 image" style="height:202px; width:208px " />
            </div>
            <h3> food name</h3>
            <p> pizza image</p>
             <asp:Button class="white-button" ID="Button1" Text="Book Order" runat="server" OnClick="Button1_Click" />
        </div>
        <div class="items">
            <div>
                <img src="image/pizza1.jfif" alt="pizza1 image" style="height:202px; width:208px" />
            </div>
            <h3> food name</h3>
            <p> pizza image</p>
             <asp:Button class="white-button" ID="Button2" Text="Book Order" runat="server" OnClick="Button2_Click" />
        </div>
    </div>
    <div class="main2">
        <div class="foodimg">
            <img src="image/plate1-min.png" alt="plate1" style="height:430px;" />
        </div>
        <div class="section">
            <div class="question">
                <h2> why people choose us?</h2>
            </div>
            <div>
                <div class="answer">
                    <div>
                        <img src="image/plate2-min.png" alt="plate2" style="height:52px;" />
                    </div>
                    <div>
                        <h4> Choose your faviorate</h4>
                        <p>
                            Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,
                        </p>
                    </div>
                </div>
                <div class="answer">
                    <div>
                        <img src="image/plate3-min.png" alt="plate3" style="height:52px;" />
                    </div>
                    <div>
                        <h4> Choose your faviorate</h4>
                        <p>
                            Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,
                        </p>
                    </div>
                </div>
                <div class="answer">
                    <div>
                        <img src="image/plate4-min.png" alt="plate4" style="height:52px;" />
                    </div>
                    <div>
                        <h4> Choose your faviorate</h4>
                        <p>
                            Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main3">
        <div class="fav-head">
            <h3> Our popular food items</h3>
            <p>Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,</p>
        </div>
        <div class="fav-food">
            <div class="item">
                <div>
                    <img src="image/dish1-min.png" alt="food item" style="height:170px" />
                </div>
                <h3> Food Item</h3>
                <p>Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,</p>
                <p class="fav-price"> 200₹</p>
            </div>
            <div class="item">
                <div>
                    <img src="image/dish2-min.png" alt="food item" style="height:170px" />
                </div>
                <h3> Food Item</h3>
                <p>Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,</p>
                <p class="fav-price"> 200₹</p>
            </div>
            <div class="item">
                <div>
                    <img src="image/dish3-min.png" alt="food item" style="height:170px" />
                </div>
                <h3> Food Item</h3>
                <p>Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,</p>
                <p class="fav-price"> 200₹</p>
            </div>
            <div class="item">
                <div>
                    <img src="image/dish4-min.png" alt="food item" style="height:170px" />
                </div>
                <h3> Food Item</h3>
                <p>Moonlight bathes the tranquil landscape, casting shadows on the silhouettes of swaying trees. A gentle breeze whispers through the night,</p>
                <p class="fav-price"> 200₹</p>
            </div>
        </div>
        <div class="design">

        </div>
    </div>
    <div class="main4">
        <div class="chif-feed">
            <h2> CUSTOMER<span style="color:red"> FEEDBACK</span></h2>
            <p> Moonlight bathes the tranquil landscape, <br />Moonlight bathes the tranquil landscape,</p>
            <div class="chif-detail">
                <div>
                    <p>Pratham Dabhi</p>
                    <h6>Web Devloper</h6>
                </div>
            </div>
            <div class="chef-vic">
                <div>
                    <i class="fa-solid fa-hand-peace"></i>
                    <h4> 68</h4>
                    <p> hello world</p>
                </div>
                <div>
                    <i class="fa-solid fa-trophy"></i>
                    <h4>900</h4>
                    <p> hello world</p>
                </div>
            </div>
        </div>
        <div class="chef-pic">
            <img src="image/chef2-min.png" alt="chif picture" style="height:500px; width:335px;" />
        </div>

    </div>
</div>
</asp:Content>
