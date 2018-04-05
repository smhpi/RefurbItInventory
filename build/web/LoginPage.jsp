<%--
    Document   : LoginPage
    Created on : 2-Apr-2018, 11:25:37 AM
    Author     : seyed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>

    <body class="site-container">
        <div class="wrap">

          <div class="login-main">
            <div class="login-box">
                <div class="logo">
                  <img src="images/refurbit-logo.png"/>
                </div>
                <h3>Sign in</h3>
                <form action="LoginServlet">
                  <div class="form-fields">

                      <span class="form-fields-input"><i class="fas fa-user-circle"></i></span>
                      <input type="text" name="un"/><br>
                  
                  </div>
                  <div class="form-fields">
                    <span class="form-fields-input"><i class="fas fa-key"></i></span>
                    <input type="password" name="pw"/>
                  </div>
                  <div class="form-fields">
                    <input type="submit" class="button" value="Login">
                  </div>
                </form>

            </div>
        </div>
        <div class="content">
        </div>
      </div>
      <script type="text/javascript" src="js/scripts.js"></script>
      <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
