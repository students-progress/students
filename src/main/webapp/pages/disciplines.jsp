<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="tableStud">
    <p>
        <a class="textStud">Список дисциплин</a>
    </p>

    <ul>
        <li id="termSelect">

            <form id="form1" method="get" action="/admin/discipline/disciplineCreating"><button type="submit" class="bton">Создать дисциплину</button></form>
            <form id="form2" method="get"><button id="butt" type="submit" name="butMark" class="btn btn-6 btn-6d but1" onclick="chck1('/admin/discipline/disciplineModify')">Модифицировать выбранную дисциплину </button></form>
            <button type="submit" class="btn" onclick="deleteDisc()">Удалить выбранные дисциплины</button>

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

            <c:forEach items="${disciplin1}" var="disc">
             <tr> <td id="row2" height="100px"><input type="checkbox" name="idStudent"
                                                    value="${disc.id}"/></td>
                    <td>${disc.name}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
