<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BSReport_Chart.aspx.cs" Inherits="MedReportSpace.BSReport_Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%--  <script src="/bubbly-1-1/distribution/vendor/jquery/jquery.min.js"></script>
    <script src="/bubbly-1-1/distribution/vendor/popper.js/umd/popper.min.js"> </script>
    <script src="/bubbly-1-1/distribution/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/bubbly-1-1/distribution/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="/bubbly-1-1/distribution/vendor/chart.js/Chart.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
    <script src="/bubbly-1-1/distribution/js/charts-custom.js"></script>

    <script src="/bubbly-1-1/distribution/js/front.js"></script>

    <%--<link rel="stylesheet" href="/bubbly-1-1/distribution/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- orion icons-->
    <link rel="stylesheet" href="/bubbly-1-1/distribution/css/orionicons.css">--%>

 <script src="/bubbly-1-0/distribution/vendor/jquery/jquery.min.js"></script>
 <script src="/bubbly-1-0/distribution/vendor/popper.js/umd/popper.min.js"> </script>
 <script src="/bubbly-1-0/distribution/vendor/bootstrap/js/bootstrap.min.js"></script>
 <script src="/bubbly-1-0/distribution/vendor/jquery.cookie/jquery.cookie.js"> </script>
 <script src="/bubbly-1-0/distribution/vendor/chart.js/Chart.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
 <script src="/bubbly-1-0/distribution/js/charts-custom.js"></script>
 <script src="/bubbly-1-0/distribution/js/front.js"></script>


 <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
 <!-- Font Awesome CSS-->
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
 <!-- Google fonts - Popppins for copy-->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
 <!-- orion icons-->
 <link rel="stylesheet" href="/bubbly-1-0/distribution/css/orionicons.css">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container-fluid">
        <div class="row">
            <div class="row">
                <div class="col-md-8 mt-3">
                    <div class="card border border-0">
                        <div class="card-body border border-0">
                            <div class="card mb-0 col-md-12 mt-0 border border-2 border-info shadow-lg ">
                                <div class="card-header bg-info">
                                    <h2 class="h1 text-uppercase mb-2 text-light">Bar chart</h2>
                                </div>
                                <div class="card-body">
                                    <div class="chart-holder">
                                        <canvas id="BS_reportChart"></canvas>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

       <script src="BSreport_Chart.js">
          
       </script>
</asp:Content>
