<%--
  Created by IntelliJ IDEA.
  User: Yasser
  Date: 12/27/2021
  Time: 8:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<div id="main-wrapper" class="container">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
  <link href="login.css" rel="stylesheet" type="text/css">
  <div class="row justify-content-center">
    <div class="col-xl-10">
      <div class="card border-0">
        <div class="card-body p-0">
          <div class="row no-gutters">
            <div class="col-lg-6">
              <div class="p-5">
                <div class="mb-5">
                  <h3 class="h4 font-weight-bold text-theme">Login</h3>
                </div>

                <h6 class="h5 mb-0">Welcome !</h6>
                <p class="text-muted mt-2 mb-5">Enter your email address and password to access admin panel.</p>

                <form action ="login" method ="post">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input  name ="email" type="email" class="form-control" id="exampleInputEmail1">
                  </div>
                  <div class="form-group mb-5">
                    <label for="exampleInputPassword1">Password</label>
                    <input  name ="password" type="password" class="form-control" id="exampleInputPassword1">
                  </div>
                 <div class = "error" style="color:red"> <%
                    String msg = (String) session.getAttribute("errorMsg");
                    if (msg != null) {
                      out.print(msg);
                      session.setAttribute("errorMsg", ""); // pour éviter que le msg d'erreur reste si on actualise la page
                    }
                 %> </div>
                  <button type="submit" class="btn btn-theme">Login</button>
                  <a href="#l" class="forgot-link float-right text-primary">Forgot password?</a>
                </form>
              </div>
            </div>

            <div class="col-lg-6 d-none d-lg-inline-block">
              <div class="account-block rounded-right">
                <div class="overlay rounded-right"></div>
                <div class="account-testimonial">

                  <br>
                  <h4 class="text-white mb-4">G A M E D E V S T U D I O</h4>
                  <p class="lead text-white">"Here where you can find your job as a game developer"</p>
                  <p>-la meilleure plateforme pour la communité gamedev  </p>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- end card-body -->
      </div>
      <!-- end card -->

      <p class="text-muted text-center mt-3 mb-0">Don't have an account? <a href="registration.jsp" class="text-primary ml-1">register</a></p>

      <!-- end row -->

    </div>
    <!-- end col -->
  </div>
  <!-- Row -->
</div>
