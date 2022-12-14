<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<script type="text/javascript">
    $(document).ready(function() {
        document.f.username.focus();
    });
</script>

<h3>Login with Username and Password</h3>

<!-- Error output: -->
<c:if test="${param.error != null}">
    <p class="error"> Login failed. </p>
</c:if>

<form name='f' action='${pageContext.request.contextPath}/login' method='POST'>
    <table class="formtable">
        <tr><td>User:</td><td><input type='text' name='username' value=''></td></tr>
        <tr><td>Password:</td><td><input type='password' name='password'/></td></tr>
        <tr><td>Remember me:</td><td><input type='checkbox' name='_spring_security_remember_me' checked="checked"/></td></tr>
        <tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
        <input name="_csrf" type="hidden" value="${_csrf.token}" />
    </table>
</form>

<p> <a href="<c:url value="/newaccount"/>" > Create Account </a> </p>