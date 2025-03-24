<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="MedReportSpace.ProfilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row row1">
            <div class="col-md-6">

                <div class="card mt-5 border-1 me-5">
                    <div class="card-body">

                        <div class="row row2 mb-3">
                            <div class="col">
                                <center>
                                    <h1>USER DETAILS</h1>
                                </center>
                            </div>
                        </div>


                        <div class="row row3 mt-3">

                            <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="name_lbl" runat="server" Text="Name"></asp:Label>
                                <center>
                                    <asp:TextBox ID="name_txt" runat="server" CssClass=" form-control border-info border-1"></asp:TextBox>
                                </center>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                                <asp:Label ID="email_lbl" runat="server" Text="Email ID"></asp:Label>
                                <center>
                                    <asp:TextBox ID="email_txt" runat="server" CssClass=" form-control border-info border-1"></asp:TextBox>
                                </center>

                            </div>
                        </div>
                        <div class="row row4">

                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="Label1" runat="server" Text="Date of Birth"></asp:Label>
                                <center>
                                    <asp:TextBox ID="dob_txt" runat="server" CssClass=" form-control border-info border-1" placeholder="dd-mm-yyyy" ReadOnly="True"></asp:TextBox>
                                </center>
                            </div>

                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                                <center>
                                    <asp:DropDownList ID="Gender_ddl" runat="server" CssClass="drp_box form-control border-info border-1">

                                        <asp:ListItem Text="Male" Value="Male" />
                                        <asp:ListItem Text="Female" Value="female" />
                                        <asp:ListItem Text="Others" Value="Others" />

                                    </asp:DropDownList>
                                </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                                <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                                <center>
                                    <asp:TextBox ID="pnum_txt" runat="server" CssClass="form-control border-info border-1" TextMode="Number" MaxLength="10"></asp:TextBox>
                                </center>
                            </div>

                        </div>

                        <div class="row row5">

                            <div class="col col-md-4 form-floating mb-3 form-group">
                                <asp:Label ID="state_lbl" runat="server" Text="State"></asp:Label>
                                <center>
                                    <asp:DropDownList ID="State_list" runat="server" CssClass="drp_box form-control border-info border-1">

                                        <asp:ListItem Text="select" Value="Select" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                        <asp:ListItem Text="Andra Pradesh" Value="Andra Pradesh" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Kashmir" Value="Kashmir" />
                                    </asp:DropDownList>

                                </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                                <center>
                                    <asp:TextBox ID="city_txt" runat="server" CssClass="form-control border-info border-1"></asp:TextBox>
                                </center>
                            </div>

                            <div class="col col-md-4  form-floating mb-3 form-group">
                                <asp:Label ID="Label5" runat="server" Text="Pin code"></asp:Label>
                                <center>
                                    <asp:TextBox ID="pincode_txt" runat="server" CssClass="form-control border-info border-1" TextMode="Number"></asp:TextBox>
                                </center>
                            </div>

                        </div>

                        <div class="row row6">

                            <div class="col col-md-12 form-floating mb-3 form-group">

                                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                <asp:TextBox ID="address_txt" runat="server" CssClass="form-control border-info border-1" TextMode="MultiLine"></asp:TextBox>

                            </div>
                        </div>

                        <div class="row row7">
                            <center>
                                <h5 style="margin-bottom: 20px; margin-top: 20px; background-color: magenta; border-radius: 20px; width: 250px; color: ghostwhite; height: 28px">Login Credentials</h5>
                            </center>
                            <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>
                                <center>
                                    <asp:TextBox ID="uname_txt" runat="server" CssClass=" form-control border-info border-1" ReadOnly="True"></asp:TextBox>
                                </center>
                            </div>

                            <div class="col col-md-6  form-floating mb-3 form-group">
                                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                                <center>
                                    <asp:TextBox ID="upass_txt" runat="server" CssClass=" form-control border-info border-1" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </center>
                            </div>
                        </div>

                        <div class="row form-group l_btn col-md-6 mx-auto">
                            <asp:Button ID="update_btn" runat="server" Text="Update" class="btn lbtn form-control btn-success border-info border-1" OnClick="update_btn_Click" />
                        </div>

                    </div>
                </div>


            </div>

            <div class="col-md-6 mt-5">
                <div class="card  ms-5">
                    <div class="card-body">
                        
                        <div class="row row1 mb-3">
                            <center>
                               <h1>BODY STATS</h1>
                            </center>
                        </div>

                        <div class="row row2 form-group">
                            
                            <div class="col-md-4">
                                <label class="">Height</label>
                                <asp:TextBox ID="height_txt" runat="server" CssClass="form-control border-info border-1"></asp:TextBox>
                            </div>

                            <div class="col-md-4">
                                <label>Weight</label>
                                <asp:TextBox ID="Weight_txt" runat="server" CssClass="form-control border-info border-1"></asp:TextBox>
                            </div>

                            <div class="col-md-4">
                                <label>Age</label>
                                <asp:TextBox ID="age_txt" runat="server" CssClass="form-control border-info border-1"></asp:TextBox>
                            </div>

                        </div>

                        <div class="row row3 mt-3 form-group mx-auto">

                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckBox1" CssClass="form-control border-0" runat="server" Text="Hypertension" />
                            </div>

                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckBox2" CssClass="form-control border-0" runat="server" Text="Diabetes" />
                            </div>

                            <div class="col-md-4">
                                <asp:CheckBox ID="CheckBox3" CssClass="form-control border-0" runat="server" Text="Smoking" />
                            </div>

                        </div>

                        <div class="row form-group l_btn col-md-4 mx-auto mt-3">
                            <asp:Button ID="bs_btn" runat="server" Text="Save" class="btn lbtn form-control btn-info border-info border-1" OnClick="bs_btn_Click" />
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
