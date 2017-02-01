<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mirahmad</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>


</head>

<body>

<header class="maxw">

    <div id="header">Система управления студентами и их успеваемостью</div>
<div id="mainMenu" align="right"><a href="/main" >Главное Меню</a></div>
<div id="mainMenu1" align="right"><a href="/loginPage" >Выйти</a></div>
<jsp:include page="${currentPage2}" flush="true"/>
</body>
</html>
