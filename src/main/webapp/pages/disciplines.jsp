<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="subjectform">
<div id="tableStud">
    <p>
        <a class="textStud">Список дисциплин</a>
    </p>

    <ul>
        <li id="termSelect">

            <button id="but1" type="submit"method="post" onclick="createSubject()" value="2">Создать дисциплину</button>
            <button id="but2" type="submit"  onclick="modifySubject()">Модифицировать выбранную дисциплину</button>
            <button id="but3" type="submit"  onclick="deleteSubject()">Удалить выбранные дисциплины</button>

        </li>
    </ul>
        <table id="my" class="table1" border="1" bordercolor="#f0f0f0">
            <tbody>
            <tr>
                <th id="row1" height="100px"></th>
                <td height="100px" class="columStud">

                    <div class="text">Наименование дисциплины</div>
                </td>

            </tr>
            </tbody>
            <tbody>

            <c:forEach items="${discipline}" var="disc">
             <tr> <td id="row2" height="100px"><input type="checkbox" name="idStudent"
                                                    value="${disc.id}"/></td>
                    <td>${disc.name}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
</div>
</form>
    <script>
        function createSubject() {
            var form = document.getElementById("subjectform");
            form.action = "/subject-create";
            form.method = "GET";
            form.submit();
        }
        function deleteSubject() {
            var form = document.getElementById("subjectform");
            form.action = "/student-delete";
            form.method = "GET";
            form.submit();
        }
        function modifySubject() {
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

            var form=document.getElementById("subjectform");
            form.action="/student-modify";
            form.method="GET";
            form.submit();
        }
    </script>