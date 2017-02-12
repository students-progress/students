<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="studentform">
    <div id="tableStud">

            <%--<input type="hidden" name="sel" value="1">--%>
            <button id="but1" type="submit" name="butMark" value="2">
                Просмотреть успеваемость
            </button>
<c:if test="${currentRole eq 'admin'}">

                <button id="but2" type="submit"  name="butMark"  onclick="createStudent()">Создать студента</button>
</c:if>
<c:if test="${currentRole eq 'admin'}"><br>
            <button id="but3" type="submit" name="butMark" onclick="modifyStudent()">
                Модифицировать студента
            </button></c:if>
<c:if test="${currentRole eq 'admin'}">
            <button id="but4" type="submit" onclick="deleteStudent()">Удалить выбранных студентов</button>
</c:if>
        <div class="textStud"> СПИСОК СТУДЕНТОВ</div>
        <table id="my" class="table1" border="1" bordercolor="#f0f0f0">
            <tbody>
            <tr>
                <th id="row1" height="10px"></th>
                <td height="10px" class="columStud">
                    <div class="text">ИМЯ</div>
                </td>
                <td height="10px" class="columStud">
                    <div class="text">ФАМИЛИЯ</div>
                </td>
                <td height="10px" class="columStud">
                    <div class="text">ГРУППА</div>
                </td>
            </tr>
            </tbody>
            <tbody>
            <c:forEach items="${students}" var="stud">
                <tr>
                    <td height="20px" id="row"><input type="checkbox" name="idStudent"
                                                        value="${stud.id}"/></td>
                    <td height="50px" align="left"  id="row2">${stud.name}</td>
                    <td height="50px" align="left" id="row3">${stud.surname}</td>
                    <td height="50px" align="left" id="row4">${stud.group}</td>
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

        var form = document.getElementById("studentform");
        form.action = "/student-delete";
        form.method = "POST";
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
            alert("Студент не выбран");
            return;
        }
        if (k > 1) {
            alert("Выберите только одного студента");
            return;
        }

        var form=document.getElementById("studentform");
        form.action="/student-modify";
         form.method="GET";
          form.submit();
    }
</script>
