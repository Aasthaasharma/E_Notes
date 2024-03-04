<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color" style="height: 81vh">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white">
						<i class="fa fa-user-plus fa-2x"></i>
						<h4>Registration</h4>
					</div>



					<%
						String regMsg=(String)session.getAttribute("reg-success");
						if(regMsg!=null){%>
					<div class="alert alert-success" role="alert">
						<%=regMsg%><a href="login.jsp">Click here to login!</a>
					</div>
					<% 
					session.removeAttribute("reg-success");
					}
						%>
						
						<%
						String failedMsg=(String)session.getAttribute("reg-failed");
						if(failedMsg!=null){%>
					<div class="alert alert-danger" role="alert">
						<%=failedMsg%>
					</div>
					<%
					session.removeAttribute("reg-failed");
						}
						%>
						



					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="mb-3">
								<label>Enter full name</label> <input type="text"
									class="form-control" name="fname" id="name">

							</div>
							<div class="mb-3">
								<label>Enter email</label> <input type="email"
									class="form-control" name="uemail" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Enter
									Password</label> <input type="password" class="form-control"
									id="exampleInputPassword1" name="upassword">
							</div>
							<div class=" d-grid gap-2">

								<button type="submit"
									class="btn btn-primary badge-pill  btn-block">Register</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>