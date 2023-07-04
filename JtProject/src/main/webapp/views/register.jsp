<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Register</title>
    <style>
        body {
            background-color: #f0f2f5;
        }

        .container {
            background-color: #e9eff7;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 800px;
            margin: 0 auto;
            margin-top: 50px;
        }

        .container-inner {
            background-color: #1c3d5a;
            border-radius: 10px;
            padding: 20px;
        }

        h3 {
            margin-top: 10px;
            color: #ffffff;
        }

        p {
            color: #c0c0c0;
        }

        label {
            color: #ffffff;
        }

        .form-control-lg {
            background-color: #edf2f9;
            border-color: #edf2f9;
            color: #1c3d5a;
        }

        .form-control-lg:focus {
            background-color: #d8e3f4;
            border-color: #d8e3f4;
            color: #1c3d5a;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #1c3d5a;
            border-color: #1c3d5a;
        }

        .btn-primary:hover {
            background-color: #173451;
            border-color: #173451;
        }

        .login-link {
            color: #ffffff;
        }
    </style>
</head>
<body>

<br>
<div class="container">
    <div class="container-inner">
        <div class="col-sm-8">
            <h3>Sign Up Now</h3>
            <p>Please fill out this form to register</p>
            <form action="newuserregister" method="post">
                <div class="form-group">
                    <label for="firstName">User Name</label>
                    <input type="text" name="username" id="firstName" required placeholder="Your Username*"
                           class="form-control form-control-lg">
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*"
                           required name="email" id="email"
                           aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control form-control-lg" required placeholder="Password*"
                           required name="password"
                           id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+[\]{};:\x27.,\x22\\|/?><]).{8,}"
                           title="Must contain: at least one number, one uppercase letter, one lowercase letter, one special character, and 8 or more characters"
                           required>
                    <input type="checkbox" onclick="showPassword()">Show Password

                </div>
                <div class="form-group">
                    <label for="Address">Address</label>
                    <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address"
                              name="address"></textarea>
                </div>
                <div class="form-group">
                    <span style="color: #ffffff">Already have an account?</span>
                    <a class="login-link" href="index">
                        <button type="button" class="btn btn-link">Login here</button>
                    </a>
                </div>
                <br>
                <input type="submit" value="Register" class="btn btn-primary btn-block">
                <br>

            </form>
        </div>
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
