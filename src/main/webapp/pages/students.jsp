<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="studentform">

    <div id="tableStud">
        <div style="width: 320px; display: inline-block">
            <%--<input type="hidden" name="sel" value="1">--%>
            <button id="but1" type="submit" name="butMark" value="2">
                Просмотреть успеваемость выбраного студента
            </button>
            <button id="but2" type="submit" method="post" onclick="createStudent()">Создать студента</button>

        </div>
        <div style="width: 320px; display: inline-block">
            <button id="but3" type="submit" name="butMark" onclick="modifyStudent()">
                Модифицировать выбранного студента
            </button>
            <button id="but4" type="submit" onclick="deleteStudent()">Удалить выбранных студентов</button>
        </div>
        <a class="textStud"> Список студентов</a>
        <table id="my" border="1" bordercolor="#f0f0f0">
            <tbody>
            <tr>
                <th id="row1" height="100px"></th>
                <td height="100px" class="columStud">
                    <div class="text">Имя</div>
                </td>
                <td height="100px" class="columStud">
                    <div class="text">Фамилия</div>
                </td>
                <td height="100px" class="columStud">
                    <div class="text">Группа</div>
                </td>
            </tr>
            </tbody>
            <tbody>
            <c:forEach items="${students}" var="stud">
                <tr>
                    <td id="row2" height="100px"><input type="checkbox" name="idStudent"
                                                        value="${stud.id}"/></td>
                    <td>${stud.name}</td>
                    <td>${stud.surname}</td>
                    <td>${stud.group}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</form>
<script>
    function createStudent() {
        var form = document.getElementById("studentform");
        form.action = "/student-create";
        form.method = "GET";
        form.submit();
    }
    function deleteStudent() {
        var form = document.getElementById("studentform");
        form.action = "/student-delete";
        form.method = "GET";
        form.submit();
    }
    function modifyStudent() {
        var students = document.getElementsByName("idStudent");
        var k = 0;
        for (i = 0; i < students.length; i++) {
            if (students[i].checked) {
                k++;
            }
        }
        if (k < 1) {
            alert("Student ne vibran");
            return;
        }
        if (k > 1) {
            alert("Viberite tolko odnogo studenta");
            return;
        }

        var form=document.getElementById("studentform");
        form.action="/student-modify";
         form.method="GET";
          form.submit();
    }
</script>
