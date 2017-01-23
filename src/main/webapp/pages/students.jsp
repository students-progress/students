<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/login" method="post">
    <div id="tableStud">
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
        <a class="textStud"> Список студентов</a>
        <a class="textStud"> </a>
        <table id="my" border="1" bordercolor="#f0f0f0">
            <tbody><tr>
                <th id="row1" height="100px"> </th>
                <td height="100px" class="columStud"><div class="text">Имя</div></td>
                <td height="100px" class="columStud"><div class="text">Фамилия</div></td>
                <td height="100px" class="columStud"><div class="text">Группа</div></td>
            </tr>
            </tbody>
            <tbody>
        <c:forEach items="${students}" var="stud" >
            <c:if test='${!stud.name.equals("asd")}'>
                <ul><tr ><li><th id="row2" height="100px"><input type="checkbox" name="id" id="stud" value="${stud.id}"></th></li>
                    <li><td>${stud.name}</td></li>
                    <li><td>${stud.surname}</td></li>
                    <li><td>${stud.group}</td></li>
               </ul>
                </tr></c:if>
        </c:forEach>
        </tbody></table>
    </div>
</form>

