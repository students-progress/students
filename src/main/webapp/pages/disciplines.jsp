<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="subjectform">
<div id="tableStud">


    <ul>
        <li id="termSelect">
            <div style="display: inline-block ;width: 300px">
<c:if test="${currentRole eq 'admin'}">
            <button id="but1" type="submit"onclick="createSubject()" value="2">Создать дисциплину</button>
                <button id="but23" type="submit"  onclick="modifySubject()">Модифицировать дисциплину</button></div>
            <button id="but3" type="submit"  onclick="deleteSubject()">Удалить выбранные дисциплины</button>
            </c:if>   </li>
        <c:if test="${currentRole eq 'student'}">
            <div class="textStu"> СПИСОК ДИСЦИПЛИН</div>
        </c:if>
    </ul>
        <table id="my1" class="table1" border="1" bordercolor="#f0f0f0">
            <tbody>
            <tr>
                <th id="row1" height="10px"></th>
                <td height="10px" class="columStud">

                    <div class="text">НАИМЕНОВАНИЕ ДИСЦИПЛИНЫ</div>
                </td>

            </tr>
            </tbody>
            <tbody>

            <c:forEach items="${disciplines}" var="disc">
             <tr> <td id="row2" height="40px"><input type="checkbox" name="idSubject"
                                                                                            value="${disc.id}"/></td>
                 <td align="left" id="idSubject">${disc.name}</td>
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
            form.action = "/subject-delete";
            form.method = "GET";
            form.submit();
        }


        function modifySubject() {
            var subject = document.getElementsByName("idSubject");
            var k = 0;
            for (i = 0; i < subject.length; i++) {
                if (subject[i].checked) {
                    k++;
                }
            }
            if (k < 1) {
                alert("Дисциплина не выбрана");
                return;
            }
            if (k > 1) {
                alert("Выберите только одну дисциплину");
                return;
            }

            var form=document.getElementById("subjectform");
            form.action="/subject-modify";
            form.method="GET";
            form.submit();
        }
    </script>