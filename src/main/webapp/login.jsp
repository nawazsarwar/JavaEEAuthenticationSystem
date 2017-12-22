<%-- 
    Document   : login
    Created on : Dec 22, 2017, 8:09:30 PM
    Author     : nawazsarwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://v4-alpha.getbootstrap.com/favicon.ico">

    <title>J2EE Signin</title>

    <!-- Bootstrap core CSS -->
    <link href="https://v4-alpha.getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://v4-alpha.getbootstrap.com/examples/signin/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

        <form class="form-signin" action="AuthServlet" method="POST">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputEmail" class="form-control" name="inputEmail" placeholder="Please Enter Email/Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="inputPassword" placeholder="Please Enter Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="https://v4-alpha.getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>