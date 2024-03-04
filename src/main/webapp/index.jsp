<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back_img{
background:url("image/notes_image.jpg");
width:100%;
height:81vh;
background-repeat:no-repeat;
background-size:cover;
}
.center{
padding-top:35vh;
}
</style>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>


<div class="container_fluid back_img">
<div class="text-center center">
<h1 class="text-white" ><i class="fa fa-book"></i>Make and Save your notes!</h1>
<a href="login.jsp" class="btn btn-light"><i class="fa fa-user"></i>Login</a>
<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus"></i>Register</a>
</div>

</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>