<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : response
    Created on : 2-Apr-2018, 3:24:31 PM
    Author     : seyed

<sql:query var="productQuery" dataSource="jdbc/RefurbItConnectionPool">
    SELECT * FROM shpro, bbpro, neggpro WHERE Shpro.SKU = neggpro.SKU 
    AND Shpro.SKU = bbpro.Offer_SKU AND Shpro.SKU = ? <sql:param value="${param.SKU}"/>
</sql:query>--%>
<%--
<sql:query var="productQuery" dataSource="jdbc/RefurbItConnectionPool">
    SELECT * FROM shpro WHERE Shpro.SKU LIKE ? '<sql:param value="${param.SKU}"/>%' LIMIT 50
</sql:query>
--%>
<sql:query var="productQuery" dataSource="jdbc/RefurbItConnectionPool">
    SELECT * FROM shpro,bbpro,neggpro 
       WHERE Shpro.SKU = neggpro.SKU  AND Shpro.Title LIKE ? '% <sql:param value="${param.SKU}"/> %'
    LIMIT 50
</sql:query>
<c:set var="productDetails" value="${productQuery.rows[0]}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
        </head>
        <body class="container">

            <section>
                <div class="dtTable">
                    <table>
                        <thead></thead>
                        <tbody>
                                <c:forEach var="row" items="${productQuery.rows}">
                                            <tr>
                                                <td>
                                                    <c:out value="${row.Title}"/>
                                                </td>
                                                <td>
                                                    <c:out value="${row.Quantity}"/>
                                                </td>
                                            </tr>
                                        
                                </c:forEach>
                        </tbody>
                </table>
            </div>
        </section>
        <article>
            <section>
                            
                <p><strong>Product Details: </strong></p>
                <p><strong>${productDetails.Title}</strong></p>
                <p>SKU: <span> ${productDetails.SKU} </span></p>
                <p> Shopify Quantity:<span> ${productDetails.Quantity} </span></p>
                <p> BestBuy Quantity:<span> ${productDetails.BbQuan} </span></p>
                <p> NewEgg.ca Quantity:<span> ${productDetails.SBS_Inventory} </span></p>

                <p></p>

            </section>
        </article>
        <%--   
        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${productQuery.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${productQuery.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        <article>
                <section>
                <p><strong>Product Details: </strong></p>
                <p>${productDetails.Title}</p>
                <p><strong>${productDetails.Title}</strong></p>
                <p>${productDetails.product_sku} </p>
            </section>
            <section>
                <p><strong>Description: </strong></p>
                <p><span style="font-size:smaller;">${productDetails.description}</span></p>
                <p>
                    <br>
                    <strong>Regular Price:</strong>
                    <span style="font-style:italic;">
                        <em> $ ${productDetails.regular_price}</em></span>
                </p>
                <p><strong>Quantity: </strong>${productDetails.quantity}</p>
            </section> --%>
    </article>
    <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
