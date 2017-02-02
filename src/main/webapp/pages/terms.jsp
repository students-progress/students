<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 02.02.2017
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="tableStud">
    <ul>
        <li id="textTermsStud" border="1">
            <button class="text">Выбрать семестр</button>
        </li>
        <li>
            <select required="" id="comboStud" name="sel">
                <option selected="" value="2">Семестр2</option>
                <option value="3">Семестр3</option>
                <option value="4">Семестр4</option>
                <option value="5">Семестр5</option>
            </select>
        </li>
        <li>
            <button type="submit" id="TermsStudBut" class="btn btn-6 btn-6d" onclick="selected()">выбрать</button>
        </li>
    </ul>
    <div id="averageMark">
        <button>Длительность  семестра: 24 недели</button>
    </div>
    <p>
        <a id="textTerm" class="textStud">Список дисциплин</a>
    </p>

    <ul>
        <li id="termSelect">

          <div>  <button type="submit" class="btn btn-6 btn-6d but1" onclick="send1()">Создать семестр</button></div>
            <div>   <button type="submit" class="btn btn-6 btn-6d but1" onclick="send()">Модифицировать текущий семестр </button></div>
            <div>     <button type="submit" class="btn btn-6 btn-6d but1" onclick="send2()">Удалить текущий семестр</button></div>

        </li>
        <li id="tableDisc1">
            <table border="1">
                <tbody><tr>
                    <td height="100px" class="columStud">Наименование дисциплины</td>
                </tr>

                </tbody>
                <tbody>

                <c:forEach items="${disciplines}" var="disc">
                    <tr> <td id="row2" height="100px"><input type="checkbox" name="idStudent"
                                                             value="${disc.id}"/></td>
                        <td>${disc.name}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </li>
    </ul>
</div>