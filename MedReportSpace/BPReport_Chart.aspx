<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="BPReport_Chart.aspx.cs" Inherits="MedReportSpace.BPReport_Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<!-- theme stylesheet-->
<%--<link rel="stylesheet" href="/bubbly-1-0/distribution/css/style.default.css" id="theme-stylesheet">--%>
<!-- Custom stylesheet - for your changes-->
<%--<link rel="stylesheet" href="/bubbly-1-0/distribution/css/custom.css">--%>
<!-- Favicon-->
<%--<link rel="shortcut icon" href="/bubbly-1-0/distribution/img/favicon.png?3">--%>

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
                                        <canvas id="BP_reportChart"></canvas>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-4 mt-3">

                    <div class="row">
                        <div class="col-md-12 mx-auto">
                            <div class="card border border-0">
                                <div class="card-body">
                                    <div class="card-header bg-info">
                                        <h2 class="h1 text-uppercase mb-2 text-light">Average</h2>
                                    </div>
                                    <div class="card-body border border-2 border-info shadow-lg">
                                        <div class="chart-holder">
                                          <%--  <canvas id="AVG_pieChart"></canvas>--%>
                                            <div class="row mx-auto">
                                                <asp:Label ID="avg_label" runat="server" Text="Label" CssClass="h1 col-md-4 mx-auto" Font-Size="25px">MM</asp:Label>
                                                <asp:Label ID="avg_label2" runat="server" Text="Label" CssClass="h1 col-md-4 mx-auto" Font-Size="25px">HG</asp:Label>
                                            </div>
                                            <div class="mx-auto">
                                                <asp:Label ID="mm_avg" runat="server" Text="Label" CssClass="h1 col-md-5" Font-Size="120px">MM</asp:Label>
                                                <asp:Label ID="hg_avg" runat="server" Text="Label" CssClass="h1 col-md-5" Font-Size="120px">HG</asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                      <div class="row">
                        <div class="col-md-12">
                            <div class="card border border-0">
                                <div class="card-header bg-info">
                                    <h2 class="h1 text-uppercase mb-2 text-light">Prediction</h2>
                                </div>
                                <div class="card-body border border-info">
                                    <div class="row">
                                        <div class="col-md-7 mx-auto mb-4 mt-3">
                                            <label class="fw-bold h5">Date</label>
                                            <asp:TextBox ID="date_txt" runat="server" CssClass=" form-control border-info border-1" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 mx-auto mb-2">
                                            <asp:Button ID="submit_btn" runat="server" CssClass="btn form-control btn-info border-info border-1 fw-bold" Text="Predict" OnClick="submit_btn_Click" />
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 mx-auto mb-2 h5 mt-3">
                                            <asp:Label ID="precd_lbl" runat="server" CssClass="form-group mx-auto" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

        </div>

             <div class="row">
                <div class="col-md-12">
                    <div class="card border-0">
                        <div class="card-body">
                            <asp:Chart ID="Chart1" runat="server" Width="1300px" Height="400px">
                                <Legends>
                                    <asp:Legend Name="Legend1" />
                                </Legends>
                                <Series>
                                    <asp:Series ChartType="Line" Name="Original" BorderWidth="2" />
                                    <asp:Series ChartType="Line" Name="Linear" BorderWidth="3" />
                                    <asp:Series ChartType="Line" Name="Smoothed" BorderWidth="2" />
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>


    </div>
</asp:Content>
