<%--
  Created by IntelliJ IDEA.
  User: Ирина
  Date: 10.05.2020
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
      <title>Изменить данные пользователя</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<%
    String login=(String)session.getAttribute("login");

    if (login==null) {

        response.sendRedirect("log.jsp");
    }
%>
<h4 class="font-italic" align="center" style="margin-top:20px"> Редактирование пользователя <h4/>
<br>
    <div class="container">

<form action="/customers/${param.id}" method="post">
    <div class="table-responsive style="margin-top: 550px">
        <table class="table text-center table-bordered">
            <input type="hidden"  name = "id" value="${param.id}">
           <div > <label style="width: 20%"> Имя </label> <input type="text" style="width: 20%" name="F_name" value="${param.F_name}" placeholder="${param.F_name}"> </div>
            <div > <label style="width: 20%"> Фамилия </label>  <input type="text" style="width: 20%" name="S_name" value="${param.S_name}" placeholder="${param.S_name}"> </div>
            <div > <label style="width: 20%"> Возраст </label> <input type="text" style="width: 20%" name="age" value="${param.age}" placeholder="${param.age}"> </div>
            <div > <label style="width: 20%"> Адрес эл.почты </label>   <input type="text"  style="width: 20%" name="email" value="${param.email}" placeholder="${param.email}"> </div>
            <div > <label style="width: 20%"> Адрес проживания </label>  <input type="text"  style="width: 20%" name="address" value="${param.address}" placeholder="${param.address}"> </div>
        </table>
    </div>
    <div class="col-12 mb-2">
        <input type="hidden" name="_method" value="put">
        <input type="submit"  class="btn btn-info btn-lg active" aria-pressed="true" value="Обновить">
        <div/>
    </form>
 </div>
</body>
</html>

