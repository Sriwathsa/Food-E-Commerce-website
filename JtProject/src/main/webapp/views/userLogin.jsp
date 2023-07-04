<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>User Login</title>
    <style>
        body {
            background-color: #A7B0AD;
        }

        .container {
            max-width: 500px;
            margin-top: 50px;
        }

        .form-box {
            background-color: #1C1E24;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .form-box h2 {
            margin-top: 0;
            margin-bottom: 20px;
            color: #FFF;
        }

        .form-group label {
            color: #FFF;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #8DA3A5;
            border-radius: 5px;
            background-color: #177E89;
            color: #FFF;
        }

        .form-group .form-control::placeholder {
            color: #8DA3A5;
        }

        .form-group .linkControl {
            color: #FFF;
        }

        .form-group .AdminControl {
            color: #FFF;
        }

        .btn-primary {
            background-color: #FFCC00;
            border-color: #FFCC00;
            transition: background-color 0.3s;
            color: #1C1E24;
        }

        .btn-primary:hover {
            background-color: #D4B200;
            border-color: #D4B200;
        }

        .message {
            color: #FFCC00;
            margin-top: 10px;
        }
    </style>
    <style>
body {
  background-image: url('https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
  
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  
}
</style>
</head>
<body>
<div class="container my-3">
    <div class="form-box">
        <h2>User Login</h2>
        <form action="userloginvalidate" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" placeholder="Username*" required
                       class="form-control form-control-lg">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control form-control-lg" placeholder="Password*" required
                       name="password" id="password">
            </div>

            <div class="form-group">
                <span><a class="linkControl" href="/register">Register here</a></span>
            </div>


            <input type="submit" value="Login" class="btn btn-primary btn-block">
            <br>
            
            <div class="form-group">
                <a class="AdminControl" href="/admin">Admin Login</a>
            </div>
            <br>
            <h3 class="message">${message}</h3>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>
