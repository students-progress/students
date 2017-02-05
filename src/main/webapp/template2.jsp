<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mirahmad</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>


</head>

<body>

<header class="maxw">
<div  id="header" >
    Система управления студентами и их успеваемостью</div>
    <div id="mainMenu2" align="center" href="/loginPage" >Выйти</div>


    <div id="mainMenu"><a href="/main" >Главное Меню</a></div>

<jsp:include page="${currentPage2}" flush="true"/>
</body>
</html>
