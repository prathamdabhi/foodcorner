<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="foodcorner.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-10 mt-5 pt-5">
                    <div class="row z-depth-3">
                        <div class="col-sm-4 bg-info rounded-left">
                            <div class="card-block text-center text-white" style="display: flex; flex-direction: column;">
                                
                                <i class="fas fa-user-tie fa-7x mt-5"></i>
                                <h2><asp:Label ID="lblUsername" CssClass="font-weight-bold mt-4" runat="server" Height="20px" Text=""></asp:Label></h2>
                                <p>Web designer</p>
                                <i class="fa fa-edit fa-2x mb-4"></i>
                            </div>
                        </div>
                        <div class="col-sm-8 bg-white rounded-right">
                            <h3 class="mt-3 text-center">Information</h3>
                            <hr class="badge-primary mt-0 w-25" />
                            <div class="row">
                                <div class="col-sm-6">
                                    <p class="font-weight-bold">Email:</p>
                                    <asp:Label ID="lblEmail" CssClass="text-muted" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-sm-6">
                                    <p class="font-weight-bold">Phone:</p>
                                    <h6 class="text-muted">9920481923</h6>
                                </div>
                            </div>
                            <h4 class="mt-3">Project</h4>
                            <hr class="bg-primary" />
                            <div class="row">
                                <div class="col-sm-6">
                                    <p class="font-weight-bold">Recent</p>
                                    <h6 class="text-muted">School Web</h6>
                                </div>
                                <div class="col-sm-6">
                                    <p class="font-weight-bold">Most Viewed</p>
                                    <h6 class="text-muted">Product 12</h6>
                                </div>
                            </div>
                            <hr class="bg-primary" />
                            <ul class="list-unstyled d-flex justify-content-center mt-4">
                                <li><a href="#"><i class="fab fa-facebook-f px-3 h4 text-info"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube px-3 h4 text-info"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter px-3 h4 text-info"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
