<%--
  Created by IntelliJ IDEA.
  User: Ирина
  Date: 10.05.2020
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Удалить пользователя</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<%
    String login=(String)session.getAttribute("login");

    if (login==null) {

        response.sendRedirect("log.jsp");
    }
%>
<div class="container" >

        <p class="font-italic" style="font-size: 150%"> Вы действительно хотите удалить пользователя ${param.id}? <p/>

        <div class="col-12 mb-2" >
            <form action="/customers/${param.id}" method="post">
                <input type="hidden" name="id" value="${param.id}">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" class="btn btn-success active" aria-pressed="true" value="Удалить">
            </form>
        <div/>
<div/>
</body>
</html>