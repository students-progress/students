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
<div id="tableStud6">
    <ul>
        <li id="textTermsStud" border="1">
          <button id="but61">Выбрать семестр</button>
        </li>
        <li id="iii">
            <select required="" id="comboStud" name="sel">
                <option selected="" value="2">Семестр2</option>
                <option value="3">Семестр3</option>
                <option value="4">Семестр4</option>
                <option value="5">Семестр5</option>
            </select>
        </li>
        <li>
            <button type="submit" id="but62" class="btn btn-6 btn-6d" onclick="selected()">выбрать</button>
        </li>
    </ul>
    <ul>
        <li id="termSelect">

          <div>  <button type="submit" id="but14">Создать семестр</button></div>
            <div>   <button type="submit" id="but15" onclick="">Модифицировать текущий семестр </button></div>
            <div>     <button type="submit"  id="but16" onclick="">Удалить текущий семестр</button></div>

        </li>
        <li id="tableDisc1">
            <table border="1" class="table2">
                <tbody><tr>
                    <td height="100px" class="columStud">НАИМЕНОВАНИЕ ДИСЦИПЛИНЫ</td>
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