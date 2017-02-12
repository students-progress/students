<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form id="subjectform">
<div id="tableStud">


    <ul>
    <li id="termSelect1">

<c:if test="${currentRole eq 'admin'}">
            <button id="but1" type="submit"onclick="createSubject()" value="2">Создать дисциплину</button>
                <button id="but23" type="submit"  onclick="modifySubject()">Модифицировать дисциплину</button>
            <button id="but3" type="submit"  onclick="deleteSubject()">Удалить выбранные дисциплины</button>
            </c:if>   </li>

        <li id="tableDisc2">

        <table border="1" class="table1" bordercolor="#C4C4C4">
            <tbody><tr>
                <th id="row1" height="30px"></th>
                <td class="columStud1"  >НАИМЕНОВАНИЕ ДИСЦИПЛИНЫ</td>
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
    </li>
    </ul>
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

            var form = document.getElementById("subjectform");
            form.action = "/subject-delete";
            form.method = "POST";
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