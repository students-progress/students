<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mirahmad</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>


</head>

<body>

<div id="header">Система управления студентами и их успеваемостью</div>
<div id="mainMenu2" align="right"><a href="/loginPage" >Выйти</a></div>
<jsp:include page="${currentPage}" flush="true"/>
</body>
</html>
