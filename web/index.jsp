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
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
    </head>
    <body class="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>


        <div class="report">
          <h2>Products List</h2>
          <div class="forms">
            <form action="response.jsp">

                <p><strong>Select a Product:</strong></p>
                <div class="row">
                    <select name="subject_id">
                         <c:forEach var="row" items="${subjects.rows}">
                    <option value="${row.subject_id}">${row.name}</option>
                    </c:forEach>
                    </select>

                    <input type="submit" value="Search" class="but-row" name="submit"/>
                </div>

            </form>
          </div>
        </div>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
