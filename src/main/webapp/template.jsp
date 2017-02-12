<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyFirstWeb</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<div id="header">СИСТЕМА УПРАВЛЕНИЯ СТУДЕНТАМИ И ИХ УСПЕВАЕМОСТЬЮ</div>
<div><a id="mainMenu1" href="/loginPage" >Выйти</a></div>
<jsp:include page="${currentPage}" flush="true"/>
</body>
</html>
