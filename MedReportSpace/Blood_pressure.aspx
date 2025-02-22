<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Blood_pressure.aspx.cs" Inherits="MedReportSpace.Blood_pressure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card mt-5">
                    <div class="card-body">

                        <div class="row row1">
                            <div class="col">
                                <center>
                                    <img src="images/hypertension.png" width="80" alt="" />
                                    <h3>Blood Pressure</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row row2">
                            <div class="col">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control border-2 border-info" />
                            </div>
                        </div>

                        <div class="row row3 mt-3">
                            <div class="col">
                                <label for="floatingInput">Laboratory/Hospital Name</label>
                                <asp:TextBox ID="labName_txt" runat="server" CssClass="Txt_box form-control border-info" SkinID="floatingInput">
                                </asp:TextBox>
                            </div>
                        </div>

                        <div class="row row4 mt-3">
                            <div class="col-md-3">
                                <label for="floatingInput">Blood Pressure</label>
                                <asp:TextBox ID="Bls" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Number">
                                </asp:TextBox>
                                <h5>mm</h5>
                            </div>

                            <div class="col-md-3">
                                <label for="floatingInput"></label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Number">
                                </asp:TextBox>
                                <h5>Hg</h5>
                            </div>

                            <div class="col-md-6">
                                <label for="floatingInput">Date of Report</label>
                                <asp:TextBox ID="reportDate_dt" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Date">
                                </asp:TextBox>
                            </div>

                        </div>

                        <div class="row row5 mt-5">
                            <center>
                                <div class="col-md-5">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="form-control btn btn-success" />
                                </div>
                            </center>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
