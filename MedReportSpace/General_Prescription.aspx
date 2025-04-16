<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="General_Prescription.aspx.cs" enableEventValidation="false" Inherits="MedReportSpace.General_Prescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
       <div class="row">

           <div class="col-md-4">

               <div class="card mt-5 border-0">
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
                              <asp:FileUpload ID="genPrecReport_upload" runat="server" CssClass="form-control border-2 border-info" />
                          </div>
                      </div>

                      <div class="row3 mt-3">
                          <div class="col">
                                <label for="floatingInput">Laboratory/Hospital Name</label>
                                <asp:TextBox ID="labName_txt" runat="server" CssClass="Txt_box form-control border-info" SkinID="floatingInput">
                                </asp:TextBox>
                          </div>
                      </div>

                       <div class="row">
                           <div class="col-md-12">
                               <label for="floatingInput">Description</label>
                               <asp:TextBox ID="desc_txt" runat="server" CssClass="Txt_box form-control border-info" TextMode="MultiLine" for="floatingInput"></asp:TextBox>
                           </div>
                       </div>
                      
                      <div class="row row3 mt-3">

                          <div class="col-md-6">
                                <label for="floatingInput">Doctor Name</label>
                                <asp:TextBox ID="drName_txt" runat="server" CssClass="Txt_box form-control border-info" SkinID="floatingInput">
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
                               <asp:Button ID="submit_btn" runat="server" Text="Submit" CssClass="form-control btn btn-success" OnClick="Submit_Click" />
                           </div>
                         </center>
                      </div>

                   </div>
               </div>

           </div>

           <div class="col-sm-8">

               <div class="card border-0">
                   <div class="card-body">

                       <div class="row row1 mt-4">
                           <div class="col-md-12">
                            <center>
                                <h3 class="">Report Table</h3>
                            </center>
                           </div>
                       </div>

                       <div class="row overflow-scroll">
                           <div class="col">
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Med_Space_ReportConnectionString %>" SelectCommand="SELECT [labName], [descr], [drName], [Rp_Date], [img_link] FROM [General_Prec_Reports] Where userName=@userid Order By Rp_Date ASC">
                                   <SelectParameters>
                                       <asp:SessionParameter Name="userid" SessionField="username" Type="String" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                               <asp:GridView ID="GPreport_grdview" runat="server" CssClass="table table-light table-bordered border-info mt-3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                                   <Columns>
                                       <asp:BoundField DataField="labName" HeaderText="lab Name" SortExpression="labName" ItemStyle-Font-Size="small"></asp:BoundField>
                                       <asp:BoundField DataField="descr" HeaderText="Description" SortExpression="descr" ItemStyle-Font-Size="Small"></asp:BoundField>
                                       <asp:BoundField DataField="drName" HeaderText="Dr Name" SortExpression="drName" ItemStyle-Font-Size="Small"></asp:BoundField>
                                       <asp:BoundField DataField="Rp_Date" HeaderText="Report Date" SortExpression="Rp_Date" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-Font-Size="Small"></asp:BoundField>
                                       <asp:BoundField DataField="img_link" HeaderText="Image Name" SortExpression="img_link" ItemStyle-Font-Size="X-Small"  ItemStyle-Width="30"></asp:BoundField>
                                       <asp:TemplateField HeaderText="Download" ItemStyle-HorizontalAlign="Center">
                                           <ItemTemplate>
                                               <asp:Button ID="cmdDownLoad" runat="server" Text="Download" CssClass="btn btn-info btn-outline-light" OnClick="cmdDownLoad_Click" />
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Columns>
                               </asp:GridView>
                           </div>
                       </div>

                   </div>
               </div>
           </div>

       </div>
   </div>

</asp:Content>
