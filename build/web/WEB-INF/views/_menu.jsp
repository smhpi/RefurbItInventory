<header>

    <div class="row-fluid">
      <div class="span2">
        <img src="images/refurbit-logo.png" style="float:left;width:180px;padding-top:15px;padding-bottom:15px;margin:0px;">
      </div>
      <nav>
      <ul>
          <li>
              <a href="${pageContext.request.contextPath}/product">
                Products
              </a>
          </li>

          <li>
              <a href="${pageContext.request.contextPath}/order.jsp">
                Orders
              </a>
          </li>

          <li>
              <a href="${pageContext.request.contextPath}/bestbuy.jsp">
              Report
              </a>
          </li>

          <li>
              <a href="${pageContext.request.contextPath}/logout">
              Logout
              </a>
          </li>
          <li>
            &nbsp;
            <span>[ ${loginedUser.userName} ]</span>
          </li>
      </ul>
      </nav>
    </div>

</header>
