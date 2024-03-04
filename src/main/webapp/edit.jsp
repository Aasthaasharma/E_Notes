

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="com.DAO.PostDAO" %>
	<%@page import="com.Db.DBConnect" %>
	<%@page import="com.User.Post" %>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login Error", "Please Login...");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteid);
	%>
	
	
	<div class="container-fluid">
		
		<h1 class="text-center">Edit Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				
						
				
					<form action="NoteEditServlet" method="post">
				<div class="mb-3">
					<input type="hidden" value="<%=noteid%>" name="noteid"> 
						
							
							
							<label for="exampleInputEmail1" class="form-label" >Enter Title</label>
							<input type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required" value="<%=p.getTitle()%>">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1" class="form-label">Enter Content</label>
							<textarea rows="12" cols="" class="form-control" name="content"
								required="required"><%=p.getContent() %></textarea>
						</div>
						
						<br>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Edit Note</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>