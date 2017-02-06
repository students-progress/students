<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 30.01.2017
  Time: 19:55    <c:if test="${currentRole eq 'admin'}">
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hello</title>
</head>
<body>
<section>
    <table id="v">
    <table id="panel" class="maxw" align="center">
        <tbody><tr id ="trMain">
            <td id="col1" align="left"><a id="1a" href="/students">Студенты</a></td>
            <td  id="col2" align="center"><a id="2a" href="/disciplines">Дисциплины</a></td>
<c:if test="${currentRole eq 'admin'}">
             <td  id="col3" align="center"><a id="3a" href="/mark">Внести оценки</a></td>
</c:if>
            <td  id="col4" align="right" ><a  id="4a" href="/terms?sel=1">Семестры</a></td>
        </tr>
       </tbody>
    </table>
    </table>
</section>
</body>
</html>
