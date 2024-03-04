<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login");
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>


<div class="container-fluid p-0">
<%@include file="all_component/navbar.jsp" %>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="image/icon.jpg" class="img-fluid mx-auto" style="max-width:355px;">
<h2><i>Start taking your notes...</i></h2>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>
</div>

</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>