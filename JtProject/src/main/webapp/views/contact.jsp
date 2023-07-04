<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
            integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
            crossorigin="anonymous"></script>
    <title>Document</title>
    <style>
        body {
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand img {
            filter: brightness(0) invert(1);
        }

        .navbar-toggler {
            border: none;
            outline: none;
        }

        .nav-link {
            color: #333333;
        }

        .nav-link:hover {
            color: #007bff;
        }

        .overlay {
            background-image: linear-gradient(135deg, #ffffff, #42afde);
            text-align: center;
            width: 100%;
            height: auto;
            background-size: cover;
            background-attachment: fixed;
            position: relative;
            overflow: hidden;
            border-radius: 0 0 85% 85% / 30%;
            padding: 50px;
            color: #070505;
            text-shadow: 1px 1px 1px #131212;
        }

        form table {
            width: 40%;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        form label {
            font-weight: bold;
            color: #333333;
        }

        form input[type="text"],
        form input[type="email"],
        form textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        form textarea {
            height: 100px;
        }

        form button[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-weight: bold;
            cursor: pointer;
        }

        form button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img th:src="@{/images/logo.png}" src="../static/images/logo.png" width="auto" height="40"
                    class="d-inline-block align-top" alt="" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <h4>Welcome ${username}</h4>
                <ul class="navbar-nav mr-auto"></ul>
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" th:href="@{/}" href="#">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" th:href="@{/shop}" href="#">Shop</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" sec:authorize="isAuthenticated()" href="logout">Logout</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" th:href="@{/cart}" href="#">Cart</a>
                    </li>
                    <li class="nav-item active">
                        <span class="nav-link" th:text="${cartCount}">0</span>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="profileDisplay">Profile</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <header>
        <div class="overlay">
            <center>
                <h2>Fill this form for supplier</h2>
            </center>
            <form action="https://formcarry.com/s/Pq3xf4Lbabh" method="POST">
                <table class="tab2" width="40%" align="center">
                    <tr>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td width="12%" align="left">
                            <label for="product-name">Product Name:</label>
                        </td>
                        <td width="25%" align="left"><input type="text" name="product Name"></td>
                    </tr>
                    <tr>
                        <td width="15%" align="left">
                            <label for="contact-no">Contact No.:</label>
                        </td>
                        <td width="25%" align="left"><input type="text" name="Number" maxlength="10"></td>
                    </tr>
                    <tr>
                        <td width="15%" align="left">
                            <label for="email">Email ID:</label>
                        </td>
                        <td width="25%" align="left"><input type="email" name="Email"></td>
                    </tr>
                    <tr>
                        <td width="15%" align="left">
                            <label for="category">Category:</label>
                        </td>
                        <td width="25%" align="left"><input type="text" name="category"></td>
                    </tr>
                    <tr>
                        <td width="15%" align="left">
                            <label for="description">Description:</label>
                        </td>
                        <td width="25%" align="left"><textarea cols="51" rows="4" name="Message"></textarea></td><br>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <br><button type="submit">Send Message</button>
                        </td>
                    </tr>
                    <tr>
                        <td><br></td>
                    </tr>
                </table>
            </form>
        </div>
    </header>
</body>

</html>
