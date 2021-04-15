<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Language</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<header>
		<h1>${sLanguage.name}</h1>
	</header>
	<main>
		<table class="table table-hover">
			<a href="/">Dashboard</a>
			<thead>
				<tr>
					<th>Name:</th>
					<th>Creator:</th>
					<th>Current Version</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${ sLanguage.name }</td>
					<td>${ sLanguage.creator }</td>
					<td>${ sLanguage.currentVersion }</td>
				</tr>
			</tbody>
		</table>

		<form action="/languages/${ id }/delete" method="post">
			<input type="hidden" name="_method" value="delete"> <input
				type="submit" value="Delete">
		</form>
		<h3>
			<a href="/languages/${sLanguage.id}/edit">Edit</a>
		</h3>
	</main>
</body>
</html>