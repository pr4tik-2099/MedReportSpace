<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Blood_pressure.aspx.cs" enableEventValidation="false" Inherits="MedReportSpace.Blood_pressure" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#ContentPlaceHolder1_BPreport_GridView').prepend($("<thead></thead>").append($(this).find('tr:first'))).DataTable();

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
                                    <img src="images/hypertension.png" width="70" alt="" />
                                    <h3>Blood Pressure</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row row2">
                            <div class="col">
                                <asp:FileUpload ID="BPreport_Upload" runat="server" CssClass="form-control border-2 border-info" />
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
                            <div class="col-md-4">
                                <label for="floatingInput">Blood Pressure</label>
                                <asp:TextBox ID="Bpmm" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Number">
                                </asp:TextBox>
                                <h5>mm</h5>
                            </div>

                            <div class="col-md-3">
                                <label for="floatingInput">--------</label>
                                <asp:TextBox ID="Bphg" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Number">
                                </asp:TextBox>
                                <h5>Hg</h5>
                            </div>

                            <div class="col-md-5">
                                <label for="floatingInput">Date of Report</label>
                                <asp:TextBox ID="reportDate_dt" runat="server" CssClass="Txt_box form-control form-floating border-info" SkinID="floatingInput" TextMode="Date">
                                </asp:TextBox>
                            </div>

                        </div>

                        <div class="row row5 mt-5">
                            <center>
                                <div class="col-md-5">
                                    <asp:Button ID="Submit_btn" runat="server" Text="Submit" CssClass="form-control btn btn-success" OnClick="Submit_btn_Click" />
                                </div>
                            </center>
                        </div>

                    </div>
                </div>

            </div>

            <div class="col-md-8  overflow-scroll">
                <div class="card border-0">
                    <div class="card-body">

                        <div class="row mt-5">
                            <div class="col">
                                <center>
                                    <h3>Report Table</h3>
                                </center>
                            </div>
                        </div>
                        <asp:LinkButton runat="server" ID="chartreport" CssClass="btn btn-outline-danger" href="BPReport_Chart.aspx">View Chart</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-outline-dark" runat="server" href="bpreportimg.aspx">Report Images</asp:LinkButton>

                        <div class="row">
                            <asp:SqlDataSource ID="BpReport_Sqldtsrc" runat="server" ConnectionString="<%$ ConnectionStrings:Med_Space_ReportConnectionString2 %>" SelectCommand="SELECT [labName], [BP_mm], [BP_hg], [Rp_Date],img_link FROM [Blood_Pressure_Reports] Where userName=@userid Order By Rp_Date DESC">
                                <SelectParameters>
                                    <asp:SessionParameter Name="userid" SessionField="username" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="BPreport_GridView" runat="server" CssClass="table table-light table-bordered border-info mt-3" DataSourceID="BpReport_Sqldtsrc" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="labName" HeaderText="Lab Name" SortExpression="labName"></asp:BoundField>
                                        <asp:BoundField DataField="BP_mm" HeaderText="BP in mm" SortExpression="BP_mm"></asp:BoundField>
                                        <asp:BoundField DataField="BP_hg" HeaderText="BP in hg" SortExpression="BP_hg"></asp:BoundField>
                                        <asp:BoundField DataField="Rp_Date" HeaderText="Report Date" SortExpression="Rp_Date" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                                        <asp:BoundField DataField="img_link" HeaderText="Image" ItemStyle-Font-Size="X-Small" ItemStyle-Width="20px" SortExpression="img_link"></asp:BoundField>
                                        <%--<asp:TemplateField HeaderText="Preview" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" Width="120px"
                                                    ImageUrl='<% # Eval("img_link") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Download" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Button ID="cmdDownLoad" runat="server" Text="Download" CssClass="btn btn-outline-info" OnClick="cmdDownLoad_Click" />
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
