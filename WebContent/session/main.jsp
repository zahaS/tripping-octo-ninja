<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>

        <h2><font color="blue">[ 서비스 메인 화면 ]</font></h2>
        <br/>
        
	<h3><%= session.getAttribute("userId") %> 님과 함께 하는 행복한 하루입니다.</h3>

        <a href="sessionInfo.jsp">세션 정보 보기</a><br/>
        <a href="game/guessGame.jsp">숫자 맞히기 게임</a><br/>
        
        <br/>
        <b>[ 요청 헤더 정보 ]</b>
        <br/>
        <%
        java.util.Enumeration headers = request.getHeaderNames();
        while (headers.hasMoreElements()) {
        String name = (String) headers.nextElement();
        %>
        <%= name %> : <%= request.getHeader(name) %> <br/>
        <%
        }
        %>
    </body>
</html>
