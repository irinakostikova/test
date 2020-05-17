<%--
  Created by IntelliJ IDEA.
  User: Ирина
  Date: 16.05.2020
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    response.sendRedirect("log.jsp");
%>