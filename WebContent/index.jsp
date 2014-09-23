<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Management</title>
    </head>
    <body>

    <table border="0" cellspacing="5" cellpadding="10" width="600">
        <tr>
            <td bgcolor="#ccccff" align="center">
                <font size="4"><b>세션 관리 (Session Management)</b></font>
            </td>
        </tr>
        <tr>
            <td>
                <b>세션 트래킹 방법</b>
                <ul>
                    <li><a href="hidden/login.jsp">은닉필드(hidden field)</a>를 사용하는 방법
                    <br/><br/>

                    <li><a href="cookie/login.jsp">쿠키(Cookie)</a>를 사용하는 방법
                    <br/><br/>

                    <li><a href="session/login.jsp">세션객체(HttpSession)</a>를 사용하는 방법
                    <br/><br/>

                    <li><a href="rewrite/login.jsp">URL 다시쓰기(URL rewriting)</a>를 사용하는 방법
                    <br/><br/>                    
                </ul>
            </td>
        </tr>
    </table>
    </body>
</html>
