<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="ar" dir="rtl">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.rtl.min.css"
	integrity="sha384-+4j30LffJ4tgIMrq9CwHvn0NjEvmuDCOfk6Rpg2xg7zgOxWWtLtozDEEVvBPgHqE"
	crossorigin="anonymous">

<title><c:out value="${page }"></c:out></title>
</head>
<body>
	<div class="container mt-3">
		<h1 class=text-center>Welcome to my App</h1>
		<c:if test="${not empty msg }">
			<div class="alert alert-success">
				<c:out value="${msg }"></c:out>
			</div>
		</c:if>
		<div class="row">
			<div class="col-md-10">
				<h2 class="text-center"></h2>
				<c:if test="${page=='home'}">
					<h3 class="text center">All todos</h3>



					<c:forEach var="t" items="${todos}">
						<div class="card">
							<div class="card-body">

								<h3>
									<c:out value="${t.todoTittle }"></c:out>
								</h3>
								<p>
									<c:out value="${t.todoContent }"></c:out>
								</p>
							</div>
						</div>
					</c:forEach>



				</c:if>
				<h2 class="text-center"></h2>
				<c:if test="${page=='add'}">
					<h3 class="text center">Add todos</h3>
					<form:form action="save" method="post" modelAttribute="todo">
						<div class="from-group">
							<form:input path="todoTittle" cssClass="form-control"
								placeHolder="Enter tittle here" />
						</div>
						<div class="from-group">
							<form:textarea path="todoContent" cssClass="form-control"
								placeHolder="Enter content here " cssStyle="height :200px" />
						</div>
						<div class="container text-center mt=5">
							<button class="btn btn-outline-success">Add Todo</button>


						</div>
					</form:form>
				</c:if>

			</div>
			<div class="col-md-2">
				<div class="list-group mt-4">
					<button type="button"
						class="list-group-item list-group-item-action active"
						aria-current="true">
						<h1 class="text-center">Menu</h1>
					</button>
					<a href="<c:url value ="${'/add '}"></c:url>"
						class="list-group-item list-group-item-action">
						<h3 class="text-center">Add todo</h3>
					</a> <a href="<c:url value ="${'/home'}"></c:url>"
						class="list-group-item list-group-item-action">
						<h3 class="text-center">View todo</h3>

					</a>
					<button type="button"
						class="list-group-item list-group-item-action">
						<h3 class="text-center">Edit todo</h3>
					</button>

				</div>

			</div>
		</div>

	</div>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
    -->
</body>
</html>