<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="General_Prescription.aspx.cs" Inherits="MedReportSpace.General_Prescription" %>
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
                                <img src="images/images/documents.png" width="80" alt=""/>
                              <h3>General Prescription</h3>
                            </center>
                          </div>
                      </div>
                      
                      <div class="row row2">
                          <div class="col">
                              <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control border-2 border-info"/>
                          </div>
                      </div>

                      <div class="row3 mt-3">
                          <div class="col">
                                <label for="floatingInput">Laboratory/Hospital Name</label>
                                <asp:TextBox ID="labName_txt" runat="server" CssClass="Txt_box form-control border-info" SkinID="floatingInput">
                                </asp:TextBox>
                          </div>
                      </div>
                      
                      <div class="row row3 mt-3">

                          <div class="col-md-6">
                                <label for="floatingInput">Issue</label>
                                <asp:TextBox ID="issue_txt" runat="server" CssClass="Txt_box form-control border-info" SkinID="floatingInput">
                                </asp:TextBox>
                          </div>

                          <div class="col-md-6">
                                <label for="floatingInput">Date of Report</label>
                              <asp:TextBox ID="reportDate_dt" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Date">
                                </asp:TextBox>
                          </div>

                      </div>
                       
                      <div class="row row4 mt-4">
                         <center>
                           <div class="col-md-5"> 
                              <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="form-control btn btn-success"/>
                           </div>
                         </center>
                      </div>

                   </div>
               </div>

           </div>
       </div>
   </div>

</asp:Content>
