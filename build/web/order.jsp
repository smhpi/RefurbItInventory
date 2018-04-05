<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : order
    Created on : 4-Apr-2018, 12:13:51 PM
    Author     : seyed
--%>
<sql:query var="order" dataSource="jdbc/RefurbItConnectionPool">
    SELECT *  FROM orders
</sql:query>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
    </head>
    <body class="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
        <h1>Orders</h1>
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${order.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${order.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
