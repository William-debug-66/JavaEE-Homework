<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: zhongpu
  Date: 4/2/21
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <!-- Bootstrap CSS -->--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <title>Hobby Results</title>

</head>
<body>

<jsp:include page="NavBar.jsp" />

<h2>The friends who share your hobby of ${requestScope.hobby} are:</h2>

<c:forEach var="username" items="${requestScope.names}">
    <p>${username}</p>
</c:forEach>
<br/>

<div class="container">
    <div class="row">
    <c:forEach var="username" items="${requestScope.names}">
        <div class="col-12 col-sm-6 col-md-4 col-lg-3">
            <div class="our-team">
                <div class="picture">
                    <img class="img-fluid" src="asset/image/${username}.jpg">
                </div>
                <div class="team-content">
                    <h3 class="name">${username}</h3>
                    <h4 class="title">Hobby: ${requestScope.hobby}</h4>
                </div>
            </div>
        </div>
    </c:forEach>
    </div>
</div>

<jsp:include page="footer.jsp" />


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</body>
</html>
