<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<h1 class="text-center">Add Your Notes</h1>
	<div class="container-fluid">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="mb-3">

							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
							}
							%>


							<label for="exampleInputEmail1" class="form-label">Enter
								title</label> <input type="text" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								name="title" required="required">

						</div>

						<div class="form-group">
							<label for="exampleInputEmail1" class="form-label">Enter
								content</label>
							<textarea rows="12" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>
						<br>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>