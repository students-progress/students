<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="studentform">
    <div id="tableStud">
        <div style="display: inline-block ;width: 300px">
            <%--<input type="hidden" name="sel" value="1">--%>
            <button id="but1" type="submit" name="butMark" value="2">
                Просмотреть успеваемость
            </button>
            <button id="but2" type="submit"  name="butMark"  onclick="createStudent()">Создать студента</button>
                <div style="display: inline-block;">
            <button id="but3" type="submit" name="butMark" onclick="modifyStudent()">
                Модифицировать студента
            </button>
            <button id="but4" type="submit" onclick="deleteStudent()">Удалить выбранных студентов</button>
                </div></div>
        <div class="textStud"> Список студентов</div>
        <table id="my" class="table1" border="1" bordercolor="#f0f0f0">
            <tbody>
            <tr>
                <th id="row1" height="10px"></th>
                <td height="10px" class="columStud">
                    <div class="text">Имя</div>
                </td>
                <td height="10px" class="columStud">
                    <div class="text">Фамилия</div>
                </td>
                <td height="10px" class="columStud">
                    <div class="text">Группа</div>
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
        var k = "";
        for (i = 0; i < students.length; i++) {
            if (students[i].checked) {
                k+=students[i].value+",";
            }
        }
        var form = document.getElementById("studentform");
        var input = "<input type='hidden' name='ids'/>"
        input.value=k;
        form.appendChild(input);
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
