<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hibernate Validation에서 유효성 검사 - check6.jsp</title>
</head>
<body>
<div class="container">
    <h2>hibernate Validation에서 유효성 검사</h2>
    <hr>
    <form:form action="./check6" method="post" modelAttribute="chk">
        아이디 : <form:input path="id"/><br>
        <form:errors path="id" element="div" delimiter=" "/>

        비밀번호 : <form:password path="pw"/><br>
        <form:errors path="pw" element="div" delimiter=" "/>

        <button class="btn" type="submit"> 전송 </button>
    </form:form>
</div>
</body>
</html>