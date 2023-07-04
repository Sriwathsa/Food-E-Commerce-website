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
    <title>User Profile</title>
    <style>
        body {
            background-color: #A7B0AD;
        }

        .container {
            max-width: 800px;
            margin-top: 50px;
        }

        .form-box {
            background-color: #1C1E24;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .form-box h3 {
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

        .form-group textarea {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #8DA3A5;
            border-radius: 5px;
            background-color: #177E89;
            color: #FFF;
            resize: none;
        }

        .form-text {
            color: #8DA3A5;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form-box">
        <h3>User Profile</h3>
        <form action="updateuser" method="post">
            <div class="form-group">
                <label for="firstName">User Name</label>
                <input type="hidden" name="userid" value="${userid}">
                <input type="text" name="username" id="firstName" required placeholder="Your Username*"
                       value="${username}" required class="form-control form-control-lg">
            </div>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*"
                       value="${email}" required name="email" id="email"
                       aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                    anyone else.</small>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control form-control-lg" required placeholder="Password*"
                       value="${password}" required name="password"
                       id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}"
                       title="Must contain: at least one number, one uppercase letter, one lowercase letter, 
                       one special character, and 8 or more characters" required>
                <input type="checkbox" onclick="showPassword()">Show Password
            </div>
            <div class="form-group">
                <label for="Address">Address</label>
                <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address"
                          name="address">${address}</textarea>
            </div>

            <input type="submit" value="Update Profile" class="btn btn-primary btn-block"><br>

        </form>
    </div>
</div>

<script>
    function showPassword() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>
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
