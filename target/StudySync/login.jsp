<!DOCTYPE html>

<html>

<head>

<title>StudySync Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<style>

body{
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(to right,#141e30,#243b55);
}

.login-box{
    width:400px;
    background:white;
    padding:40px;
    border-radius:20px;
}

</style>

</head>

<body>

<div class="login-box shadow-lg">

<h2 class="text-center mb-4">
StudySync
</h2>

<form action="login" method="post">

<input type="email"
name="email"
class="form-control mb-3"
placeholder="Email"
required>

<input type="password"
name="password"
class="form-control mb-3"
placeholder="Password"
required>

<button class="btn btn-primary w-100">
Login
</button>

</form>

<div class="text-center mt-3">

<a href="register.jsp">
Create Account
</a>

</div>

</div>

</body>

</html>
