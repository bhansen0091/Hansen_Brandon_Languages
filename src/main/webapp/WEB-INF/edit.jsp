<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Language</title>
</head>
<body>
	<div>
		<h1>Edit Language</h1>
		<a href="/">Dashboard</a>
	</div>
	<form:form action="/languages/${language.id}/update" method="post"
		modelAttribute="language">
		<input type="hidden" name="_method" value="put">
		<p>
			<form:label path="name">Name:</form:label>
			<form:errors path="name" />
			<form:input path="name" />
		</p>
		<p>
			<form:label path="creator">Creator:</form:label>
			<form:errors path="creator" />
			<form:input path="creator" />
		</p>
		<p>
			<form:label path="currentVersion">Current Version</form:label>
			<form:errors path="currentVersion" />
			<form:input path="currentVersion" />
		</p>
		<input type="submit" value="Submit" />
	</form:form>

</body>
</html>