<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pagina di accesso</title>
	</head>
	<body style="font-family: verdana, sans-serif;">

		<div style="text-align:center;">
			<img src="img/ejb.png" style="width:20%; height:20%; margin-top:1em;" />
		</div>

		<h1 style="text-align: center;">Accesso</h1>

		<!-- Eventuale messaggio -->
		<c:if test="${not empty requestScope.message ne not empty param.message}"> <%-- In EL non esiste XOR --%>
			<div style="color:red; text-align:center; margin:1em;"><strong>${requestScope.message}${param.message}</strong></div>
		</c:if>

		<form action="login" method="POST">
			<table style="margin: auto;" cellpadding="4">
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" maxlength="50" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" maxlength="50" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<input type="submit" value="Accedi" style="width: 45%;" /> | <input type="button" value="Registrati" style="width: 45%;" onclick="location.href='register'" />
					</td>
				</tr>
			</table>
		</form>

	</body>
</html>
