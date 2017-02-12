<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="changeForm">
    <div id="tableStud">
            <button id="but4" type="submit" onclick="changeMark()">Изменить оценки студента</button>
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
                    <td id="row2" align="left"  height="40px"><input type="checkbox" name="idStudent"
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
            alert("Студент не выбран");
            return;
        }
        if (k > 1) {
            alert("Выберите только одного студента");
            return;
        }

        var form=document.getElementById("changeForm");
        form.action="/change-mark";
        form.method="GET";
        form.submit();
    }
</script>