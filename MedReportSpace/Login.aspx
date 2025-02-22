<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MedReportSpace.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card mt-5 shadow p-3 mb-5 bg-body-tertiary rounded">
                  <div class="card-body ">

                      <center>

                          <div class="row1">
                              <div class="col">
                                  <img src="images/images/boy.png" width="120" alt="" />
                              </div>
                          </div>

                          <div class="row2">
                              <div class="col">
                                  <h4>Login</h4>
                              </div>
                          </div>

                          <div class="row3">

                              <div class="col1 ">
                                  <div class="form-group">
                                      <label for="floatingInput">UserName</label>
                                      <asp:TextBox ID="username_txt" runat="server" CssClass="Txt_box form-control" SkinID="floatingInput">
                                      </asp:TextBox>
                                  </div>
                              </div>

                              <div class="col1 ">
                                  <div class="form-group">
                                      <label for="floatingInput">Password</label>
                                      <asp:TextBox ID="password_txt" runat="server" CssClass="Txt_box form-control" SkinID="floatingInput" TextMode="Password">
                                      </asp:TextBox>
                                  </div>
                              </div>

                              <div class="form-group l_btn" style="margin-top: 10px;">
                                  <asp:Button ID="login_btn" runat="server" Text="Login" class="btn lbtn btn-success form-control mt-2" OnClick="login_btn_Click" />

                                  <a href="SignUp.aspx">
                                      <input id="signup_btn" type="button" value="Sign Up" class="btn lbtn btn-info form-control mt-2" />
                                  </a>

                              </div>
                          </div>

                      </center>

                </div>
               </div>
            </div>
        </div>
    </div>
</asp:Content>
