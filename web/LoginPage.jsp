<%-- 
    Document   : LoginPage
    Created on : 2-Apr-2018, 11:25:37 AM
    Author     : seyed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
                                <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
		<title>Login Page</title>
	</head>

	<body>
		<form action="LoginServlet">

			username 		
			<input type="text" name="un"/><br>		
		
			password
			<input type="text" name="pw"/>
			
			<input type="submit" value="submit">			
		
		</form>
	</body>
</html>
