<%-- 
    Document   : bbajax
    Created on : 1-May-2018, 9:11:45 AM
    Author     : seyed
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BestBuy Ajax</title>
        <jsp:include page="WEB-INF/views/_head.jsp"></jsp:include>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
                $("#bestbuy").append("<table></table>");
                $.ajax({
                    type: "GET",
                    url: "https://marketplace.bestbuy.ca/api/offers?api_key=fa4ab3b8-4421-4a9a-9e2d-6c087e7bc9ce&max=100",
                    dataType: 'xml',
                    success: function(xml) {
                        $(xml).find('offer').each(function(){
                         var bTitle = $(this).find('product_title').text();
                         var bSKU = $(this).find('shop_sku').text();
                         var bquantity = $(this).find('quantity').text();
                         $("<tr></tr>").html("<td>"+bSKU+" </td><td> "+bTitle+" </td><td> "+bquantity + "</td>").appendTo("#bestbuy table");
                        });
                        
                        },
                    error: function() {
                        alert("error");
                  }
                });        
              });
        </script>
    </head>
    <body lass="container">
        <jsp:include page="WEB-INF/views/_menu.jsp"></jsp:include>
        <div class="report">
        <h1>BestBuy Inventory</h1>
        <div id="bestbuy">
            
        </div>
        </div>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.9/js/all.js" integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
