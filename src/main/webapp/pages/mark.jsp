<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="changeForm">
    <div id="tableStud">
            <button id="but4" type="submit" onclick="changeMark()">Изменить оценки выбранного студента</button>
        <div class="textStud"> Список студентов</div>
        <table id="my" class="table1" border="1" bordercolor="#f0f0f0">
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
</div>
</form>
<script>
    function changeMark() {
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

        var form=document.getElementById("changeForm");
        form.action="/change-mark";
        form.method="GET";
        form.submit();
    }
</script>