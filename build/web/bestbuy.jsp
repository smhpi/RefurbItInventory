<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : bestbuy
    Created on : 25-Apr-2018, 8:08:35 AM
    Author     : seyed
--%>
<sql:query var="result" dataSource="jdbc/RefurbItConnectionPool">
            SELECT Offer_SKU,Quantity,Price,Product FROM bbpro 
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
    </head>
    <body class="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
        <h1>BestBuy Reports</h1>
        
    
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
