<%@ page import="com.studysync.entity.User" %>

<%
User user = (User) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>

<html>

<head>

<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container mt-5">

<div class="hero shadow">

<h1>

Welcome,
<%= user.getName() %>

</h1>

<p>

Find your perfect study partner.

</p>

</div>

<div class="row mt-4">

<div class="col-md-4">

<div class="card p-4 shadow">

<h4>Skills</h4>

<p>
<%= user.getSkills() %>
</p>

</div>

</div>

<div class="col-md-4">

<div class="card p-4 shadow">

<h4>Course</h4>

<p>
<%= user.getCourse() %>
</p>

</div>

</div>

<div class="col-md-4">

<div class="card p-4 shadow">

<h4>Availability</h4>

<p>
<%= user.getAvailability() %>
</p>

</div>

</div>

</div>

</div>

</body>

</html>
