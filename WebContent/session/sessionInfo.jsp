<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SessionTest Page</title>
    </head>
    <body>  
        <% 
        session.setMaxInactiveInterval(60); // 초
        %>
        
        <h3><font color="red">Session 정보</font></h3>
        <table border="1">
            <tr><td>새로운 세션여부</td><td><%= session.isNew()%></td></tr>
            <tr><td>세션 ID</td><td><%= session.getId() %></td></tr>
            <tr><td>세션 생성시간</td><td><%= new java.util.Date(session.getCreationTime()) %></td></tr>
            <tr><td>마지막 세션사용시간</td><td><%= new java.util.Date(session.getLastAccessedTime()) %></td></tr>
            <tr><td>세션 유효시간</td><td><%= session.getMaxInactiveInterval() %>초</td></tr>
        </table>
        
    </body>
</html>
