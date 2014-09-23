<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>

<HTML>
    <HEAD>
        <TITLE>Number Guessing Game: Bad Number</TITLE>
    </HEAD>
    
    <BODY BGCOLOR='white'>
        
        <CENTER><B>Error: Bad Number Entered</B></CENTER>
        
        <P>
            <FONT COLOR='red'>
                The guess you entered <B><%= request.getParameter("guess") %></B> was not a number. <BR>
                Please <A HREF='guessGame.jsp'>back up</A> and try again.
            </FONT>
        </P>
        
    </BODY>
</HTML>
