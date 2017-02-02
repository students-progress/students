<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 01.02.2017
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<form id="form" action ="/subject-create"  method="post">
    <div id="blockcreate">
        <div class="textSub">Для того что б создать новую дисциплину заполните все поля и нажмите кнопку "создать"</div>
        <div id="blockcreate1">
            <ul>
                <li id="but11">Название</li>
                <li><input id="1" name="name" maxlength="25" size="20" value="" class="textSt"></li>
                <button id="subBut" class="btn btn-6 btn-6d textarea" onclick="chckspace1('/service/DisciplineService/addSubject')"><div>Создать</div></button>
            </ul>
        </div>
    </div>
</form>
