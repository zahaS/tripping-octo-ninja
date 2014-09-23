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
        <%
        Cookie[] cookies = request.getCookies();
        String userId = null;
        
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("userId")) {
                    userId = cookies[i].getValue();
                    break;
                }
            }
        %>        
        <h3><%= userId %> 님과 함께 하는 행복한 하루입니다.</h3>
        <%
        } else {
        %>
        <h3>로그인이 필요합니다. (브라우저의 쿠키 허용이 필요)</h3>
        <a href="login.jsp">로그인</a><br/>
        <%
        }
        %>

        <br/>
        <b>[ 요청 헤더 정보 ]</b>
        <br/>
        <%
        java.util.Enumeration<String> headers = request.getHeaderNames();
        while (headers.hasMoreElements()) {
        String name = (String) headers.nextElement();
        %>
        <%= name %> : <%= request.getHeader(name) %> <br/>
        <%
        }
        %>
        
    </body>
</html>
