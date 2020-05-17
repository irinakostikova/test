<%--
  Created by IntelliJ IDEA.
  User: Ирина
  Date: 10.05.2020
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
       <title>Список пользователей</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
    String login=(String)session.getAttribute("login");

    if (login==null) {

        response.sendRedirect("log.jsp");
    }
%>

<form action = "logout.jsp" align="right">
    <input type="submit" class = "btn btn-link btn-lg" value="Выйти">
    <h4 class="font-italic" align="center" style="margin-top:20px"> Пользователи <h4/>
</form>

<br>
<table class="table table-bordered table-striped table-hover ">
    <thead class="thead-dark">
    <tr>
        <td>ID</td>
        <td>Имя</td>
        <td>Фамилия</td>
        <td>Возраст</td>
        <td>Адрес эл.почты</td>
        <td>Адрес проживания</td>
        <td>Действие</td>
    </tr>
    <thead/>
    <tbody>
    <c:forEach items="${customers}" var = "customer">
        <tr>
            <td>${customer.getId()}</td>
            <td>${customer.getF_name()}</td>
            <td>${customer.getS_name()}</td>
            <td>${customer.getAge()}</td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td>

                <form action = "update.jsp" method="post">
                    <input type="hidden" name="id" value="${customer.getId()}">
                    <input type="hidden" name="F_name" value="${customer.getF_name()}">
                    <input type="hidden" name="S_name" value="${customer.getS_name()}">
                    <input type="hidden" name="age" value="${customer.getAge()}">
                    <input type="hidden" name="email" value="${customer.getEmail()}">
                    <input type="hidden" name="address" value="${customer.getAddress()}">
                    <input type="submit" class = "btn btn-info active m-1" aria-pressed="true" value="Изменить" style="float:left;width:90px">
                </form>
                <form action="delete.jsp" method="post">
                    <input type="hidden" name="id" value="${customer.getId()}">
                    <input type="submit" class = "btn btn-success active m-1" aria-pressed="true" value="Удалить" style="float:left;width:90px">
                </form></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<form action = "add.jsp"   align="center">
    <input type="submit" class = "btn btn-danger btn-lg active" aria-pressed="true" value="Добавить нового пользователя">
</form>
</body>
</html>