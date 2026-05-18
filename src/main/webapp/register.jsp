<!DOCTYPE html>

<html>

<head>

<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow-lg p-4">

<h2 class="text-center mb-4">

Create Account

</h2>

<form action="register" method="post">

<input type="text"
name="name"
class="form-control mb-3"
placeholder="Name"
required>

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

<input type="text"
name="course"
class="form-control mb-3"
placeholder="Course">

<input type="text"
name="skills"
class="form-control mb-3"
placeholder="Skills">

<textarea
name="bio"
class="form-control mb-3"
placeholder="Bio"></textarea>

<input type="text"
name="availability"
class="form-control mb-3"
placeholder="Availability">

<button class="btn btn-success w-100">

Register

</button>

</form>

</div>

</div>

</div>

</div>

</body>

</html>
