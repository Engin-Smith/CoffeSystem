
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="assignmentASP.login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link rel="stylesheet" href="~/Content/bootstrap-theme.min.css" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
    <%-- ====================================================== --%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    
</head>
<body>
    <form id="form1" runat="server">   
            <section class="vh-100" style="background-color: #9A616D; width:100%;">
              <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                  <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                      <div class="row g-0">
                          <%-- image display --%>
                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                          <img src="https://images.pexels.com/photos/11449484/pexels-photo-11449484.jpeg?auto=compress&cs=tinysrgb&w=1600"
                            alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                        </div>
                          <%-- ending --%>
                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                          <div class="card-body p-4 p-lg-5 text-black">
                              <form>
                                  <div class="d-flex align-items-center mb-3 pb-1" style="padding-left:140px">
                                      <i class="fa fa-coffee fa-8x me-3" style="color: #bb6137;"></i>
                                      <span class="h1 fw-bold mb-0">Logo</span>
                                  </div>

                                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px; padding-left:170px">Sign into your account</h5>

                                  <div class="form-outline mb-4">
                                      <!--<input type="email" id="txt_username" class="form-control form-control-lg" />-->
                                      <label style="font-size: 15px;">Email address</label>
                                      <asp:TextBox ID="txt_username" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                  </div>

                                  <div class="form-outline mb-4">
                                      <!---<input type="password" id="txt_password" class="form-control form-control-lg" />--->
                                      <label style="font-size: 15px">Password</label>
                                      <asp:TextBox ID="txt_password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                  </div>

                                  <div class="pt-1 mb-4">
                                      <!---<button class="btn btn-dark btn-lg btn-block" type="button" id="btn_log">Login</button>--->
                                      <asp:Button class="btn btn-dark btn-lg btn-block" ID="btn_login" runat="server" Text="LOGIN" OnClick="btn_login_Click" />
                                  </div>
                                  <!--<a class="small text-muted" href="#!">Forgot password?</a>
                                <p class="mb-5 pb-lg-2" style="color: #393f81;">
                                    Don't have an account? <a href="#!"
                                        style="color: #393f81;">Register here</a>
                                </p>-->
                                  <div class="mx-auto" style="padding-left: 165px">
                                      <asp:Button class="btn btn-success btn-lg btn-block" ID="btn_seller_log" Width="50%" runat="server" Text="Login As Seller" OnClick="btn_seller_log_Click" />
                                  </div>
                              </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
          </section>
    </form>
</body>
</html>
