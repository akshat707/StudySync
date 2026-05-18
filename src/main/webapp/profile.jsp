<%@ page import="com.studysync.entity.User" %>

<%
User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html>

<html>

<head>

<title>Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container mt-5">

<div class="card shadow-lg p-5">

<h2>
<%= user.getName() %>
</h2>

<hr>

<p>
<strong>Email:</strong>
<%= user.getEmail() %>
</p>

<p>
<strong>Course:</strong>
<%= user.getCourse() %>
</p>

<p>
<strong>Skills:</strong>
<%= user.getSkills() %>
</p>

<p>
<strong>Availability:</strong>
<%= user.getAvailability() %>
</p>

<p>
<strong>Bio:</strong>
<%= user.getBio() %>
</p>

</div>

</div>

</body>

</html>
