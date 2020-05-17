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
    <title>Добавить нового пользователя</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
          crossorigin="anonymous">

</head>
<body>
<%
    String login=(String)session.getAttribute("login");

    if (login==null) {

        response.sendRedirect("log.jsp");
    }
%>
<div class="container">
<h4 class="font-italic" align="center" style="margin-top:20px"> Добавление нового пользователя <h4/>
    <br> <br>

    <form action = "/customers" method="post">
        <div class="table-responsive" >
        <table class="table text-center table-bordered">
            <div > <label style="width: 20%">Имя</label> <input required style="width: 20%" type="text" name="F_name" placeholder="Имя"> </div>
            <div > <label style="width: 20%">Фамилия</label> <input required style="width: 20%" type="text" name="S_name" placeholder="Фамилия"> </div>
            <div > <label style="width: 20%">Возраст</label> <input required  style="width: 20%" type="text" name="age" placeholder="Возраст"><div/>
            <div > <label style="width: 20%">Адрес эл.почты</label>  <input required style="width: 20%" type="text" name="email" placeholder="Адрес эл.почты"> <div/>
            <div > <label style="width: 20%">Адрес проживания</label> <input required style="width: 20%" type="text" name="address" placeholder="Адрес проживания"> <div/>
   <table/>
    <div class="col-12 mb-2">
        <input type="submit" class="btn btn-danger btn-lg active" aria-pressed="true" value="Сохранить">
        <div/>
        <div/>
</form>
<div/>
</body>
</html>