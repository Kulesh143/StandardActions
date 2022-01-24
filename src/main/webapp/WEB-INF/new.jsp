<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/17/2021
  Time: 7:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%--The time interval in which two systems(i.e. the client and the server) communicate with each other can be termed as a session.--%>
<%--In simpler terms, a session is a state consisting of several requests and response between the client and the server.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Included</title>
</head>
<body>
<center>
    <h2>Using JavaBeans in JSP</h2>
    <jsp:useBean id = "test" class="com.intellij.project.firstproject.Controllers.TestBean" scope="application" />
    <jsp:setProperty name = "test" property = "message" value = "Hello JSP HOW ARE YOU???..." />
    <p>Got message....</p>
    <jsp:getProperty name = "test" property = "message" />
</center>
</body>
</html>
