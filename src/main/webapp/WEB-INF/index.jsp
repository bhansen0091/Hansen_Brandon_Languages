<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Languages</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
	<header>
		<h1>Welcome to Languages</h1>
	</header>
	<main>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>Creator</th>
					<th>Current Version</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items='${ allLanguages }' var='lang'>
					<tr>
						<td>
							<h3>
								<a href="/languages/${lang.id}">${lang.name}</a>
							</h3>
						</td>
						<td>
							<h3>${lang.creator}</h3>
						</td>
						<td>
							<h3>${lang.currentVersion}</h3>
						</td>
						<td><a href="/languages/${lang.id}"> View </a> | <a
							href="/languages/${lang.id}/edit"> Edit </a> | <a
							href="/languages/${lang.id}/delete"> Delete </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


		<a href="/languages/add">Add language</a>
	</main>
</body>

</html>