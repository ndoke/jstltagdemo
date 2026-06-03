<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String[] cities = {"Toronto", "Calgary", "Montreal"};
	pageContext.setAttribute("myCities", cities);
%>
<html>
	<body>
		<c:forEach var="tempCity" items="${myCities}">
			${tempCity}<br/>
		</c:forEach>
	</body>
</html>