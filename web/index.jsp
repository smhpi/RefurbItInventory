<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : index
    Created on : 2-Apr-2018, 11:25:02 AM
    Author     : seyed
--%>
<sql:query var="products" dataSource="jdbc/RefurbItConnectionPool">
    SELECT SKU, Title FROM shpro
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
           <script>  
                    var request=new XMLHttpRequest();  
                    function searchInfo(){  
                        var SKU=document.vinform.SKU.value;  
                        var url="response.jsp?SKU="+SKU;  

                        try{  
                        request.onreadystatechange=function(){  
                            if(request.readyState==4){  
                            var SKU=request.responseText;  
                            document.getElementById('mylocation').innerHTML=SKU;  
                            }  
                        }//end of function  
                           request.open("GET",url,true);  
                           request.send();  
                        }
                        catch(e){alert("Unable to connect to server");}  
                    }  
            </script>
        </head>
        <body class="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
            <div class="report">
                <h2>Products List</h2>
                <div class="forms">
                    <form action="response.jsp">
                        <p><strong>Select a Product:</strong></p>
                        <div class="row">
                            <select name="SKU">
                            <c:forEach var="row" items="${products.rows}">
                                <option value="${row.SKU}">${row.Title}</option>
                            </c:forEach>
                        </select>
                        <input type="submit" value="Search"  name="submit"/>
                    </div>
                </form>
            </div>

            <div style="clear: both;" >
                <div> <p><br></p></div>
                        <%--
                        <div lass="forms">
                          <form action="search.jsp">
                              <input type="text" name="title" class="form-control" placeholder="Search roll no..">
                              
                              <input type="submit" value="Search"  name="submit"/>
                          </form>
                        </div>
                        --%>
            </div>
            <form name="vinform">  
                    <input type="text" name="SKU" onkeyup="searchInfo()">  
            </form>  

            <span id="mylocation"></span> 
        </div>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
