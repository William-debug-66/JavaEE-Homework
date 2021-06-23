<%--
  Created by IntelliJ IDEA.
  User: zhongpu
  Date: 3/3/21
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.swufe.javaee.beerV1.model.beer" %>
<html>
<head>
    <title>String Recommended JSP</title>
</head>
<body>
<%
    List<beer> styles = (List<beer>) request.getAttribute("styles");
    out.println("<br/>this is a jsp page");
    for (int i=0;i<styles.size();i++) {
        out.println("<br/>try: " + styles.get(i).getBand());
        out.println("<br/>year_of_birth: " + styles.get(i).getYear_of_birth());
        out.println("<br/>size: " + styles.get(i).getSize());
    }
%>

</body>
</html>
