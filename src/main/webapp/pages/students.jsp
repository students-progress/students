<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/login" method="post">
    <table id="log_table">
        <ul>
            <li>
                <form id="form" method="get">

                    <input type="hidden" name="sel" value="1">
                    <button id="but1" type="submit" name="butMark" class="buttonstud" value="2" onclick="chck('/admin/student/studentProgress?')">Просмотреть успеваемость выбраного студента</button></form></li>

            <li><form id="form1" method="get" action="/student/studentCreate">
                <button id="but2" type="submit" class="buttonstud" method="post">Создать студента</button></form></li>

        </ul>
        <ul>

            <li><form id="form2" method="get">
                <button id="but3" type="submit" name="butMark" class="buttonstud" onclick="chck1('/admin/student/studentModify')">Модифицировать выбранного студента</button></form></li>
            <li>
                <button id="but4" type="submit" class="buttonstud" onclick="deleteStudents()">Удалить выбранных студентов</button></li>

        </ul>
        <a class="textStud">  Список студентов</a>
        <thead><tr> <th>name</th><th>surname</th><th>group</th></tr> </thead>
        <tbody>
        <c:forEach items="${students}" var="stud" >
            <c:if test='${!stud.name.equals("asd")}'>
                <tr ><th id="row2" height="100px"><input type="checkbox" name="id" id="studid" value="${stud.id}"></th>
                    <td>${stud.name}</td>
                    <td>${stud.surname}</td>
                    <td>${stud.group}</td>
                </tr></c:if>
        </c:forEach>
        </tbody></table>

</form>

