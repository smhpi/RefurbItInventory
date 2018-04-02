<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 2-Apr-2018, 11:25:02 AM
    Author     : seyed
--%>
<sql:query var="subjects" dataSource="jdbc/RefurbItConnectionPool">
    SELECT subject_id, name FROM Subject
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RefurbIT Inventory Project</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
        <h1>Inventory</h1>
        <form action="response.jsp">
            <strong>Select a subject:</strong>
            <select name="subject_id">
                <c:forEach var="row" items="${subjects.rows}">
                    <c:forEach var="column" items="${row}">
                        <option value="${row.subject_id}">${row.name}</option>
                    </c:forEach>
                </c:forEach>
            </select>  
            <input type="submit" value="Ok" name="submit"/>
        </form>
        
    </body>
</html>
