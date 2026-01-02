<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            margin-top: 120px;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        a {
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>

<h2 class="error">Oops! Something went wrong</h2>

<p>
<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
        out.print(error);
    } else {
        out.print("Unknown error occurred.");
    }
%>
</p>

<br>
<a href="login.html">Go back to Login</a>

</body>
</html>
