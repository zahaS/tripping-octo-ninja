<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>

<HTML>
    <HEAD>
        <TITLE>Number Guessing Game</TITLE>
    </HEAD>
    
    <BODY BGCOLOR='white'>
        
        <CENTER><B>Number Guessing Game</B></CENTER>
        
        <P>
            <%
            String result = request.getParameter("result");
            if (result.equals("you_win")) {
            %>
                <FONT COLOR='blue'>Your guess was correct.</FONT><BR/>
                <A HREF='guessGame.jsp'>Click here</A> if you want to play again.

            <%
            } else if (result.equals("you_lose")) {
            %>
                <FONT COLOR='red'>Sorry, your last guess was wrong.</FONT><BR/>
                <A HREF='guessGame.jsp'>Click here</A> to start over.
            
            <%
            } else if (result.equals("no_guess")) {
            %>
                <FONT COLOR='red'>You must enter a number in the text field.<BR/>
                Please <A HREF='guessGame.jsp'>back up</A> and try again.</FONT>
            
            <%
            }
            %>
        </P>
        
    </BODY>
</HTML>
