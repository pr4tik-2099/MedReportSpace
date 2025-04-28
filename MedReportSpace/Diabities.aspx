<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Diabities.aspx.cs" Inherits="MedReportSpace.WebForm2" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
     $(document).ready(function () {
         $('#ContentPlaceHolder1_BsReport_Gridview').prepend($("<thead></thead>").append($(this).find('tr:first'))).DataTable();

     });
     </script>
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
                              <img src="images/images/diabetes%20(1).png" width="80" alt=""/>
                              <h3>Blood Sugar</h3>
                            </center>
                          </div>
                      </div>
                      
                      <div class="row row2">
                          <div class="col">
                              <asp:FileUpload ID="BSreport_upload" runat="server" CssClass="form-control border-2 border-info"/>
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
                                <label for="floatingInput">Blood Sugar</label>
                                <asp:TextBox ID="BSlvl_txt" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput">
                                </asp:TextBox>
                              <h5>mg/dl</h5>
                          </div>

                          <div class="col-md-6">
                                <label for="floatingInput">Date of Report</label>
                              <asp:TextBox ID="BSreportDate_dt" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Date">
                                </asp:TextBox>
                          </div>

                      </div>
                       
                      <div class="row row4 mt-4">
                         <center>
                           <div class="col-md-5"> 
                               <asp:Button ID="Submit_btn" runat="server" Text="Submit" CssClass="form-control btn btn-success" OnClick="Submit_btn_Click" />
                           </div>
                         </center>
                      </div>

                   </div>
               </div>

           </div>

                  <div class="col-md-8 mt-5 overflow-scroll">

           <div class="card border-0">
               <div class="card-body">

                   <div class="row">
                       <div class="col">
                           <center>
                               <h5>Report Table</h5>
                           </center>
                       </div>
                   </div>

                   <asp:LinkButton runat="server" ID="chartreport" CssClass="btn btn-outline-danger" href="BSReport_Chart.aspx">View Chart</asp:LinkButton>
                   <asp:LinkButton ID="LinkButton1" CssClass="btn btn-outline-dark" runat="server" href="bpreportimg.aspx">Report Images</asp:LinkButton>

                   <div class="row">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Med_Space_ReportConnectionString %>" SelectCommand="SELECT [labName], [BS_lvl], [Rp_Date],[img_Link] FROM [Blood_Sugar_Reports] Where userName=@userid Order By Rp_Date DESC">
                           <SelectParameters>
                               <asp:SessionParameter Name="userid" SessionField="username" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <div class="col">
                           <asp:GridView ID="BsReport_Gridview" runat="server" CssClass="table table-light table-bordered border-info" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                               <Columns>
                                   <asp:BoundField DataField="labName" HeaderText="lab Name" SortExpression="labName"></asp:BoundField>
                                   <asp:BoundField DataField="BS_lvl" HeaderText="Blood Sugar" SortExpression="BS_lvl"></asp:BoundField>
                                   <asp:BoundField DataField="Rp_Date" HeaderText="Report Date" SortExpression="Rp_Date" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                   <asp:BoundField DataField="img_Link" HeaderText="Image Name" SortExpression="img_Link" ItemStyle-Font-Size="X-Small" ItemStyle-Width="20px"></asp:BoundField>
                                   <asp:TemplateField HeaderText="Download" ItemStyle-HorizontalAlign="Center">
                                       <ItemTemplate>
                                           <asp:Button ID="cmdDownLoad" runat="server" Text="Download" CssClass="btn btn-info" OnClick="cmdDownLoad_Click" />
                                       </ItemTemplate>
                                   </asp:TemplateField>
                               </Columns>
                           </asp:GridView>
                       </div>
                   </div>

                   <div>
                   </div>
               </div>
           </div>

       </div>

       </div>
   </div>
</asp:Content>
