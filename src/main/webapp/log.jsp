<%--
  Created by IntelliJ IDEA.
  User: Ирина
  Date: 15.05.2020
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Авторизация</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body >
<%
    HttpSession session1 = request.getSession();
    session1.setAttribute("login",null);
%>

<div class="container"  style="width:400px;margin-top:10%">
    <form action="login" method="post"  align="center">
        <div class="card">
            <div class="card-header  text-left">
                <label for="exampleInputLog"> Ваш логин </label>
                <input type="text" class="form-control"  id="exampleInputLog" name="login"  placeholder="Введите логин"/>
             </div>
             <div class="card-header text-left">
                 <label for="exampleInputPassword1"> Пароль </label>
                 <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Введите пароль"/>
             </div>
             <br>
             <div class="col-12 mb-1" >
                 <input type="submit" class="btn btn-primary btn-lg active" aria-pressed="true" value="Войти" />
             </div>
            <br>
         </div>
    </form>
</div>
</body>
</html>

