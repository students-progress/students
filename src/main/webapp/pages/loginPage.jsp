<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 27.12.2016
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    function web() {
        var login=document.getElementById("login").value;
        var password=document.getElementById("password").value;
        var form=document.getElementById("form");
        var message=document.getElementById("message");
        if(login==""|| password==""){
            message.appendChild(document.createTextNode("zopolnite polya"));
        }

        else{
            form.action="/login";
            form.method="POST";
            form.submit();
        }
       // alert(login+password);
    }

</script>
<div style="padding: 15px;" class="login_form_container">
    <form id="form">

        <table id="login_table">
            <tbody><tr>
                <td colspan="2" class="caption">Вход <acronym title="Тестовые аккаунты:  admin / password , student / password ">!</acronym></td>
            </tr>
            <tr>
                <td>Имя:</td>
                <td><input type="text" name="login"  class="text" id="login" value=""></td>

            </tr>

            <tr>
                <td>Пароль:</td>
                <td><input type="password" id ="password" name="password" class="text"></td>
            </tr>
            <tr>
                <td>Выбрать роль:</td>
                <td><select name="role" id="opening_list">

                    <option value="1">Admin</option>

                    <option value="2">Student</option>

                </select></td>
            </tr>
            <tr height="60">
                <td>&nbsp;</td>

                <td><%--@declare id=""--%><button onclick="web()" class="button" value="войти" >войти</button></td>

            </tr>

            </tbody><td id="message"></td></table>

    </form>
</div>

