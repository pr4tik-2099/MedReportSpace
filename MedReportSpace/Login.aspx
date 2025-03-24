<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MedReportSpace.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card mt-5 shadow-lg p-3 mb-5 bg-body-tertiary rounded border-0">
                  <div class="card-body">

                      <center>

                          <div class="row1">
                              <div class="col">
                                  <img src="images/images/boy.png" width="100" alt="" />
                              </div>
                          </div>

                          <div class="row2 mt-1">
                              <div class="col">
                                  <h4>Login</h4>
                              </div>
                          </div>
                          <div class="row3 mt-4">

                              <div class="col1 ">
                                  <div class="form-group">
                                      <label for="floatingInput" class="fw-semibold">UserName</label>
                                      <asp:TextBox ID="username_txt" runat="server" CssClass="Txt_box form-control  border-info border-2" SkinID="floatingInput">
                                      </asp:TextBox>
                                  </div>
                              </div>

                              <div class="col1 mt-3">
                                  <div class="form-group">
                                      <label for="floatingInput" class="fw-semibold">Password</label>
                                      <asp:TextBox ID="password_txt" runat="server" CssClass="Txt_box form-control  border-info border-2" SkinID="floatingInput" TextMode="Password">
                                      </asp:TextBox>
                                  </div>
                              </div>
                            <div class="row mt-3">
                              <div class="col form-group col-md-6">
                                  <asp:Button ID="login_btn" runat="server" Text="Login" class="btn lbtn btn-dark form-control mt-2 border-2" OnClick="login_btn_Click" />
                             </div>
                             <div class="col col-md-6 form-group">
                                  <a href="SignUp.aspx">
                                      <input id="signup_btn" type="button" value="Sign Up" class="btn lbtn btn-info form-control mt-2 border-2" />
                                  </a>
                                </div>
                              </div>
                          </div>

                      </center>

                </div>
               </div>
            </div>
        </div>
    </div>
</asp:Content>
