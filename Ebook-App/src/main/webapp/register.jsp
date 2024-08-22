<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>

	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registration Page</h4>
						
						<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg }</p>
						<!-- to remove the message after refresing we will use c:remove c:remove scope will be session -->
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg }</p>
						<c:remove var="failedMsg" scope="session"/>
						</c:if>
									
						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleFormControlInput1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleFormControlInput1" required="required"
									name="fname">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Email address</label> <input
									type="email" class="form-control" id="exampleFormControlInput1" required="required"
									name="email">
							</div>
							<div class="form-group">
								<label for="exampleFormControlInput1">Phone No.</label> <input
									type="number" class="form-control" name="phno"
									id="exampleFormControlInput1" required="required">
							</div>

							<div class="form-group">
								<label for="exampleFormControlInput1">Password</label> <input
									type="password" class="form-control" name="password"
									id="exampleFormControlInput1" required="required">
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleFormControlTextarea1"><label
									for="exampleFormControlInput1" class="form-check-label">Agree terms & Condition</label>
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>

						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp" %>

</body>
</html>