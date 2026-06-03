<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, com.jsp.tagdemo.Student" %>
<%
List<Student> data = new ArrayList<>();
data.add(new Student("John", "Doe", false));
data.add(new Student("Max", "Johnson", false));
data.add(new Student("Mary", "Wan", true));

pageContext.setAttribute("myStudents", data);
%>
<html>
	<body>
		<table border="1">
			<tr>
				<th>First name</th>
				<th>Last name</th>
				<th>Gold customer</th>		
			</tr>
			<c:forEach var="tempStudent" items="${myStudents}">
				<tr>
					<td>${tempStudent.firstName}</td>
					<td>${tempStudent.lastName}</td>
					<td>${tempStudent.goldCustomer}</td>		
				</tr>
			</c:forEach>
		</table>
	</body>
</html>