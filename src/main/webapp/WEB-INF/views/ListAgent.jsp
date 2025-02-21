<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Agents</title>
</head>
<body>

	<h2>List of Agents</h2>

	<table border="1">
	
		<thead>
		<tr>
			<th>userId</th>
			<th>licenseNo</th>
			<th>agencyName</th>
			<th>experienceYears</th>
			<th>rating</th>
			<th>address</th>
		</tr>
		
		</thead>
		


		<tbody>

			<c:forEach items="${agentList}" var="agent">
				<tr>
					<td>${agent.userId}</td>
					<td>${agent.licenseNo}</td>
					<td>${agent.agencyName}</td>
					<td>${agent.experienceYears}</td>
					<td>${agent.rating}</td>
					<td>${agent.address}</td>

				</tr>

			</c:forEach>

		</tbody>
	</table>
</body>
</html>