<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial;
            width: 300px;
            margin: 100px auto;
        }
        .error {
            color: red;
            font-weight: bold;
        }
        input, button {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
        }
    </style>
</head>
<body>

<h2>Login</h2>

<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
    <p class="error"><%= error %></p>
<%
    }
%>

<form action="login" method="post">
    <label>Username:</label>
    <input type="text" name="username" required>

    <label>Password:</label>
    <input type="password" name="password" required>

    <button type="submit">Login</button>
</form>

</body>
</html>
