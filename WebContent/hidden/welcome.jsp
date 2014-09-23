<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>

        <h3>축하합니다.</h3>
        <h3>로그인에 성공하셨습니다.</h3><br/>
        
        <form action="main.jsp" method="post">
            <input type="hidden" name="userId" value="<%= request.getAttribute("userId") %>"/>
            <input type="submit" value="메인화면으로"/>
        </form>

    </body>
</html>
