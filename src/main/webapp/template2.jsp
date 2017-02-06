<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyFirstWeb</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>


</head>

<body>

<header class="maxw">
<div  id="header" >
    СИСТЕМА УПРАВЛЕНИЯ СТУДЕНТАМИ И ИХ УСПЕВАЕМОСТЬЮ</div>
    <div  align="center"><a id="mainMenu2" href="/loginPage"  >Выйти</a></div>


    <div><a id="mainMenu" href="/main" >Главное Меню</a></div>

<jsp:include page="${currentPage2}" flush="true"/>
</body>
</html>
