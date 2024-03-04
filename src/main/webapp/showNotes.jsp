<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>




<%@ page
	import="com.DAO.PostDAO,com.Db.DBConnect,com.User.Post,com.User.UserDetails"%>


<%
UserDetails user3 = (UserDetails) session.getAttribute("userD");
if (user3 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login");
}
%>


<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<%
	String updateMsg = (String) session.getAttribute("updateMSg");
	if (updateMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=updateMsg%></div>
	<%
	session.removeAttribute("updateMsg");
	}
	%>

	<%
	String wrongMsg = (String) session.getAttribute("wrongMsg");
	if (wrongMsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=wrongMsg%></div>
	<%
	session.removeAttribute("wrongMsg");
	}
	%>
	<div class="container">
		<h1 class="text-center">All Notes:</h1>
		<div class="row">
			<div class="col-md-12">


				<%
				if (user3 != null) {
					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post = ob.getData(user3.getId());

					for (Post po : post) {
				%>

				<div class="card mt-3">
					<img alt="" src="image/icon.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">
					<div class="card-body p-4">



						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>
						<p>
							<b class="text-success">Published by:<%=user3.getName()%> <br>
								<b class="text-primary"></b></b>
						</p>
						<p>
							<b class="text-success">Published Date:<%=po.getPdate()%> <br>
								<b class="text-success"></b></b>
						</p>
						<div class="container text-center mt-2">
							<a href="deleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=po.getId()%>" class="btn btn-primary">Edit</a>
						</div>

					</div>
				</div>



				<%
				}
				}
				%>



			</div>
		</div>
	</div>

	<div class="container-fluid bg-dark footer"
		style="margin-top: 20px; margin-bottom: 0px">
		<p class="text-center text-white">Designed and developed by Aastha
			Sharma.</p>

		<p class="text-center text-white">All Rights Reserved!</p>
	</div>


	<%-- <%@include file="all_component/footer.jsp"%> --%>
</body>
</html>

