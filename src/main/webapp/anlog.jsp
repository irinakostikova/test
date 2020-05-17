<%--
  Created by IntelliJ IDEA.
  User: Ирина
  Date: 16.05.2020
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ошибка</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

<div class="container" align="center" style="width:600px;margin-top:20%"   >
<h5>Вы ввели не верный логин и пароль!
    <br> Попробуйте снова.</h5>
    <br>
    <div class="col-12 mb-2" >
            <form action = "logout.jsp" method="get">
             <input type="submit" class="btn btn-warning btn-lg active" aria-pressed="true" value="Повторить вход">
            </form> </div>

</div>
</body>
</html>
