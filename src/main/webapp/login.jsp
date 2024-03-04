<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
						<h4>Login</h4>
					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=invalidMsg%>
					</div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					<%
					String withoutlogin = (String) session.getAttribute("Login-error");
					if (withoutlogin != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=withoutlogin%>
					</div>
					<%
					session.removeAttribute("Login-error");

					}
					%>
					
					
					<%
					String lgMsg=(String)session.getAttribute("logoutMsg");
					if (lgMsg != null) {
						%>
						<div class="alert alert-success" role="alert">
							<%=lgMsg%>
						</div>
						<%
						session.removeAttribute("logoutMsg");

						}
						%>
					
					
					

					<div class="card-body">
						<form action="loginServlet" method="post">

							<div class="mb-3">
								<label>Enter email</label> <input type="email"
									class="form-control" name="uemail" id="exampleInputEmail1"
									aria-describedby="emailHelp">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Enter
									Password</label> <input type="password" class="form-control"
									name="upassword" id="exampleInputPassword1">
							</div>
							<div class=" d-grid gap-2">

								<button type="submit"
									class="btn btn-primary badge-pill  btn-block">Login</button>
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