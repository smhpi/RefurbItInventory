<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : response
    Created on : 2-Apr-2018, 3:24:31 PM
    Author     : seyed
--%>
<sql:query var="productQuery" dataSource="jdbc/RefurbItConnectionPool">
    SELECT * FROM shpro 
    WHERE shpro.Title like ? '%<sql:param value="${param.name}"/>%'
    LIMIT 300
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
        </head>
        <body class="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
        Result for ${param.name}
        <table border="1">
            <!-- column headers -->
            <tr>
                <th>${productQuery.columnNames[0]}</th>
                <th>${productQuery.columnNames[4]}</th>
                <th>${productQuery.columnNames[2]}</th>
                <th>${productQuery.columnNames[1]}</th>
                <th>Shopify</th>
                <th>BestBuy</th>
                <th>NewEgg</th>
                <th>${productQuery.columnNames[6]}</th>
                <th>${productQuery.columnNames[7]}</th>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${productQuery.rows}">
                <tr>
                    
                    <td>${row.shpro_id}</td>
                    <td>${row.SKU}</td>
                    <td>${row.Vendor}</td>
                    <td>${row.Title}</td>
                    <td>${row.Quantity}</td>
                    <td>${row.BbQuan}</td>
                    <td>${row.SBS_Inventory}</td>
                    <td>${row.SPrice}</td>
                    <td>${row.RPrice}</td>
                </tr>
            </c:forEach> 
        </table>
        <%--
      <article>
              <section>
              <p><strong>Product Details: </strong></p>
              <p><strong>${productDetails.Item_Title}</strong></p>
              <p>SKU: <span> ${productDetails.SKU} </span></p>
              <p> Shopify Quantity:<span> ${productDetails.Quantity} </span></p>
              <p> BestBuy Quantity:<span> ${productDetails.BbQuan} </span></p>
              <p> NewEgg.ca Quantity:<span> ${productDetails.SBS_Inventory} </span></p>

                <p></p>
                
            </section>
        </article>
        
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