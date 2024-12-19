<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Wele Learn</title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .login-logo img {
            max-width: 150px;
            margin: 0 auto;
            display: block;
        }

        h1 {
            margin-bottom: 20px;
            text-align: center;
            color: #333333;
        }

        .form-control {
            margin-bottom: 20px;
            border-radius: 5px;
            border-color: #cccccc;
        }

        .btn-primary {
            background-color: #4c4cfc;
            border-color: #4c4cfc;
        }

        .btn-primary:hover {
            background-color: #3838d9;
            border-color: #3838d9;
        }

        .register-link {
            text-align: center;
            font-size: 14px;
        }

        .register-link a {
            color: #4c4cfc;
            text-decoration: none;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-logo text-center" style="margin-left: 10px;">
            <img src="assets/images/GE.png" alt="Grow English">
        </div>
        <h1>Login</h1>
        <form action="processLogin" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>
            
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
        <div class="register-link">
            Don't have an account? <a href="register.jsp">Register</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
