<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/login" method="post">
    <table id="login_table">
        <thead><tr><th>name</th><th>surname</th><th>group</th></tr> </thead>
        <tbody>
        <c:forEach items="${students}" var="stud" >
            <c:if test='${!stud.name.equals("asd")}'>
                <tr>
                    <td>${stud.name}</td>
                    <td>${stud.surname}</td>
                    <td>${stud.group}</td>
                </tr></c:if>
        </c:forEach>
        </tbody></table>

</form>

