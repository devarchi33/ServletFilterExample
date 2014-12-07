<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkout Page</title>
</head>
<body>
	<%
		String userName = null;
		String sessionId = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user"))
					userName = cookie.getValue();
			}
		}
	%>
	<h3>
		Hi
		<%=userName%>, do the checkout.
	</h3>
	<br />
	<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>