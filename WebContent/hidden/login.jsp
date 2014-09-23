<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h2>로그인</h2>

        <form action="loginProcess" method="post">
            <table border="0" cellspacing="0" cellpadding="5">
                <tr>
                    <td>회원 아이디 :</td>
                    <td><input type="text" name="user" size="15"></td>
                </tr>
                <tr>
                    <td>패스워드 :</td>
                    <td><input type="password" name="password" size="15"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="로그인"></td>
                </tr>
            </table>
        </form>
        
        <% 
        String errorMsg = (String) request.getAttribute("errorMsg");
        if (errorMsg != null) {
        %>
        <font color="red"><b><%= errorMsg %></b></font>
        <%
        }
        %>
        
    </body>
</html>
