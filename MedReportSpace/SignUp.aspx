<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MedReportSpace.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-7 mx-auto">
            
            <div class="card mt-5 border-2 shadow p-3 mb-5 bg-body-tertiary rounded">
                <div class="card-body">

                    <div class="row row1">
                        <div class="col">
                            <center>
                                <img src="images/images/profile.png" width="90" alt=""/>
                            </center>
                        </div>
                    </div>
                  
                    <div class="row row2 mb-3">
                        <div class="col">
                            <center>
                                <h3>USER SIGN UP</h3>
                            </center>
                        </div>
                    </div>

                 
                    <div class="row row3">
                      
                        <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="name_lbl" runat="server" Text="Name"></asp:Label>
                             <center>
                                <asp:TextBox ID="name_txt" runat="server" CssClass=" form-control border-info border-2"></asp:TextBox>
                              </center>
                        </div>

                        <div class="col col-md-6  form-floating mb-3 form-group">
                           <asp:Label ID="email_lbl" runat="server" Text="Email ID"></asp:Label>
                              <center>
                                <asp:TextBox ID="email_txt" runat="server" CssClass=" form-control border-info border-2"></asp:TextBox>
                              </center>
                            
                        </div>
                    </div>
                    <div class="row row4">
                      
                        <div class="col col-md-4 form-floating mb-3 form-group">
                            <asp:Label ID="Label1" runat="server" Text="Date of Birth"></asp:Label>
                              <center>                  
                                  <asp:TextBox ID="dob_txt" runat="server" CssClass=" form-control border-info border-2" TextMode="Date" placeholder="dd-mm-yyyy"></asp:TextBox>
                              </center>
                        </div>

                        <div class="col col-md-4 form-floating mb-3 form-group">
                            <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                              <center>                  
                               <asp:DropDownList ID="Gender_ddl" runat="server" CssClass="drp_box form-control border-info border-2">

                                    <asp:listItem Text="Male" Value="Male" />
                                    <asp:listItem Text="Female" Value="female" />
                                    <asp:listItem Text="Others" Value="Others" />

                               </asp:DropDownList>                                 
                              </center>
                        </div>

                        <div class="col col-md-4  form-floating mb-3 form-group">
                                <asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label>
                              <center>
                                  <asp:TextBox ID="pnum_txt" runat="server" CssClass="form-control border-info border-2" TextMode="Number" MaxLength="10"></asp:TextBox>
                              </center>
                        </div>

                    </div>

                    <div class="row row5">
                      
                        <div class="col col-md-4 form-floating mb-3 form-group">
                            <asp:Label ID="state_lbl" runat="server" Text="State"></asp:Label>   
                            <center>
                                <asp:DropDownList ID="State_list" runat="server" CssClass="drp_box form-control border-info border-2">

                                    <asp:ListItem Text="select" Value="Select" />
                                    <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    <asp:ListItem Text="Andra Pradesh" Value="Andra Pradesh" />
                                    <asp:ListItem Text="Bihar" Value="Bihar" />
                                    <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                    <asp:ListItem Text="Kashmir" Value="Kashmir" />
                                    <asp:ListItem Text="Kerala" Value="Kerala" />
                                    <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                    <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                    <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                    <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                    <asp:ListItem Text="Punjab" Value="Punjab" />
                                    <asp:ListItem Text="Haryana" Value="Haryana" />
                                     
                                </asp:DropDownList>
                                 
                              </center>
                        </div>

                        <div class="col col-md-4  form-floating mb-3 form-group">
                           <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                              <center>
                                  <asp:TextBox ID="city_txt" runat="server" CssClass="form-control border-info border-2"></asp:TextBox>
                              </center>
                        </div>

                         <div class="col col-md-4  form-floating mb-3 form-group">
                              <asp:Label ID="Label5" runat="server" Text="Pin code"></asp:Label>
                              <center>
                                  <asp:TextBox ID="pincode_txt" runat="server" CssClass="form-control border-info border-2" TextMode="Number"></asp:TextBox>
                              </center>
                        </div>

                    </div>

                    <div class="row row6">
                      
                        <div class="col col-md-12 form-floating mb-3 form-group">
                              
                                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                                <asp:TextBox ID="address_txt" runat="server" CssClass="form-control border-info border-2" TextMode="MultiLine" ></asp:TextBox>
                            
                        </div>
                    </div>

                    <div class="row row7">
                        <center>
                            <h5 style="margin-bottom:20px;margin-top:20px;background-color:magenta;border-radius:20px;width:250px;color:ghostwhite;height:28px">Login Credentials</h5>
                        </center>
                        <div class="col col-md-6 form-floating mb-3 form-group">
                                <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>
                             <center>
                                <asp:TextBox ID="uname_txt" runat="server" CssClass=" form-control border-info border-2"></asp:TextBox>
                              </center>
                        </div>

                        <div class="col col-md-6  form-floating mb-3 form-group">
                           <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
                              <center>
                                  <asp:TextBox ID="upass_txt" runat="server" CssClass=" form-control border-info border-2" TextMode="Password"></asp:TextBox>
                              </center>
                        </div>
                    </div>
                    
                      <div class="row form-group l_btn mx-auto col-md-4 mt-3">
                              <asp:Button ID="signup_btn" runat="server" Text="Submit" class="btn lbtn btn-success border-info border-1" OnClick="signup_btn_Click" />
                      </div>

                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
