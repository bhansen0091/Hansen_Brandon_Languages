<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Language</title>
</head>
<body>
	<header>
		<h1>Create Language Form</h1>
		<a href="/">Dashboard</a>
	</header>
	<main>
		<form:form action="/languages/create" method="post" modelAttribute="language" >
			<p>
				<form:label path="name">Name</form:label>
				<form:errors path="name"/>
				<form:input path="name"/>
			</p>
			
			<p>
				<form:label path="creator">Creator:</form:label>
				<form:errors path="creator"/>
				<form:input path="creator" />
			</p>
			
			<p>
				<form:label path="currentVersion">Current Version:</form:label>
				<form:errors path="currentVersion" />
				<form:input path="currentVersion"/>
			</p>
			<input type="submit"/>
		</form:form>
	
	</main>

</body>
</html>