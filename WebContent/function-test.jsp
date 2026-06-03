<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
	<body>
		<c:set var="data" value="nachiket"/>
		Length of string <b>${data}</b>: ${fn:length(data)}
		<br/><br/>
		Upper case version of the string <b>${data}</b>: ${fn:toUpperCase(data)}
		<br/><br/>
		Does the string <b>${data}</b> start with <b>nach</b>?: ${fn:startsWith(data, "nach")}
		<br/><br/>
		<c:set var="data" value="Mumbai,Pune,Toronto,Charlotte"/>
		<c:set var="cities" value="${fn:split(data,',')}"/>
		<c:forEach var="city" items="${cities}">
			${city}<br/>
		</c:forEach>
		
		<c:set var="joined" value="${fn:join(cities,'*')}"/>
		Joined cities: ${joined}
	</body>
</html>