<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MedReportSpace.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Homepage.css" rel="stylesheet" />
    <style>
   .hover-class {
    transition: all 0.2s;
}

.hover-class:hover {
     transform: scale(1.08);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div id="carouselExampleIndicators" class="carousel slide slideshow" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active s-img">
                    <img src="images/images/doctors.jpg" class="d-block w-100 s_img" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item s-img">
                    <img src="images/images/Gemini_Generated_Image_j21tzj21tzj21tzj.jpg" class="d-block w-100 s_img" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item s-img">
                    <img src="images/images/Doctor%20%20photo.jpg" class="d-block w-100 s_img" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <div class="container-fluid">
       <div class="row">
           <div class="col-md-12">
               <asp:LinkButton ID="LinkButton1" runat="server" href="/Blood_pressure.aspx">LinkButton</asp:LinkButton>
               <a href="Diabities.aspx">Diabities.aspx</a>
               <center>
                       <div class="row row1 mt-5">

                           <div class="col-md-4 hover-class">
                               <div class="card border-1 border-info" style="width: 18rem;">
                                   <img src="images/images/doc.jpg" class="card-img-top" alt="...">
                                   <div class="card-body">
                                       <h5 class="card-title">Card title</h5>
                                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                       <a href="#" class="btn btn-primary">Go somewhere</a>
                                   </div>
                               </div>
                           </div>

                           <div class="col-md-4 hover-class">
                               <div class="card border-1 border-info" style="width: 18rem;">
                                   <img src="images/images/doc%20(3).jpg" class="card-img-top" alt="...">
                                   <div class="card-body">
                                       <h5 class="card-title">Card title</h5>
                                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                       <a href="#" class="btn btn-primary">Go somewhere</a>
                                   </div>
                               </div>
                           </div>

                           <div class="col-md-4 hover-class">
                               <div class="card border-1 border-info" style="width: 18rem;">
                                   <img src="images/images/doc%20(2).jpg" class="card-img-top" alt="...">
                                   <div class="card-body">
                                       <h5 class="card-title">Card title</h5>
                                       <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                       <a href="#" class="btn btn-primary">Go somewhere</a>
                                   </div>
                               </div>
                           </div>
                       </div>
                  </center>


           </div>
       </div>

        <div class="row row2 mt-5">
            <div class="card mb-3 border-0">
                <img src="images/images/2148816233.jpg" class="card-img-top" alt="..." height="400" style="object-fit: cover" />
                <div class="card-body">
                    <h3 class="card-title">If you earn wealth at the cost of your health later you may have to regain your health at the cost of Your Health</h3>
                    
                    <p>
                        A person who has good physical health is likely to have bodily functions and processes working at their peak.

This is not only due not only to an absence of disease. Regular exercise, balanced nutrition, and adequate rest all contribute to good health. People receive medical treatment to maintain the balance, when necessary.

Physical well-being involves pursuing a healthful lifestyle to decrease the risk of disease. Maintaining physical fitness, for example, can protect and develop the endurance of a person’s breathing and heart function, muscular strength, flexibility, and body composition.
                    </p>
                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
