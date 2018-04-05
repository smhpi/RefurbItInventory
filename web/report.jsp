<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : report
    Created on : 4-Apr-2018, 11:35:27 AM
    Author     : seyed
--%>
<sql:query var="result" dataSource="jdbc/RefurbItConnectionPool">
    SELECT product_sku , product_title , quantity, regular_price  FROM product
</sql:query>
<c:set var="reportDetails" value="${result.rows[0]}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
    </head>
    <body class="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
        <h1>Inventory Reports</h1>
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th style="padding: 0 5px;"><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td style="padding: 0 5px;"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
