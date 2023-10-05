<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RestfulAPI JSON Insert2</title>
    <script  src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<div class="container">
    <h2>폼에서 유효성 검증</h2>
    <hr />
    <div>
        연번 : <input type="text" name="num" id="num" required /><br/><br/>
        제목 : <input type="text" name="title" id="title" required /><br/><br/>
        <input type="submit" id="btn1" value="등록" />
    </div>
    <script>
        $(document).ready(function(){
            $("#btn1").click(function(){
                var test = {"num":$("#num").val(), "title":$("#title").val()}
                $.ajax({
                    type:"post",
                    url:"${path1 }/json/insertForm2",
                    data:JSON.stringify(test),
                    dataType:"json",
                   success:function (t) {
                        console.log("성공", t);
                    },
                    error:function (err) {
                        console.log("실패");
                        console.log(err);
                    },
                });
            });
        });
    </script>
</div>
</body>
</html>