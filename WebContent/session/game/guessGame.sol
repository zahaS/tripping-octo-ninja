<%@ page contentType="text/html"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page session="true" errorPage="badNumber.jsp"%>

<%-- Business Logic을 지닌 GuessGameLogic Bean을 session scope에서 찾아서 사용 
(기존에 저장된 객체가 없으면  새로 생성된다.)		--%>
<jsp:useBean id="gameService" class="guess.game.GuessGameLogic" scope="session">
    <% // Bean 객체 생성시에는 No Argument 생성자가 호출되므로 초기화 메소드를 따로 만들어서 사용함
    gameService.initialize(1, 10, 3);  // 새로운 객체 생성시에만 수행된다
    %>
</jsp:useBean>

<HTML>
    
    <HEAD>
        <TITLE>Number Guessing Game</TITLE>
    </HEAD>
    
    <BODY BGCOLOR='white'>
        <CENTER><B>Number Guessing Game</B></CENTER>
        
        <BR/>
        
        <%-- Controller 역할 --%>
        <% // 요청이 POST 방식이면 입력된 폼 데이터를 가져온다.
        if ( request.getMethod().equals("POST") ) {
            String guess = request.getParameter("guess");
            // 입력된 값이 없을 경우 'no_guess'를 결과 View로 선택
            if ( (guess == null) || (guess.length() == 0) ) {
        %>
                <jsp:forward page="gameResult.jsp">
                    <jsp:param name="result" value="no_guess"/>
                </jsp:forward>
        <%
            }
        
            // 입력된 'guess' 값을 int 값으로 변환
            int guessNum = Integer.parseInt(guess);
            // 입력된 값의 정답 여부 확인
            boolean isCorrectAnswer = gameService.isCorrectGuess(guessNum);
        
            // 정답이면
            if ( isCorrectAnswer ) {
                // 다음 요청을 위해 Session을 Clear 하고 'you_win'을 결과 View로 선택
                session.invalidate();
        %>
                <jsp:forward page="gameResult.jsp">
                    <jsp:param name="result" value="you_win"/>
                </jsp:forward>
        <%
            }

            // 오답일 경우,  기회가 남아있지 않으면
            if ( gameService.getHowManyGuessesLeft() == 0 ) {
                // 다음 요청을 위해 Session을 Clear하고 'you_lose'를 결과 View로 선택
                session.invalidate();
        %>
                <jsp:forward page="gameResult.jsp">
                    <jsp:param name="result" value="you_lose"/>
                </jsp:forward>
        <% 
            // 기회가 남았을 경우 남은 횟수 출력
            } else {
        %>
                <P>
                    <FONT COLOR='red'>
                        Your guess, <%= guess %>, was not correct.
                    </FONT>
                    <BR/>
                    You have <%= gameService.getHowManyGuessesLeft() %> guesses left.
                </P>
        <%
            }
        } // POST 방식일 경우 수행될 if 문 끝
        %>
        
        <%-- GET, POST 방식 모두 수행될 부분 --%>
	Guess the number, from 1-10.  You will be given three chances.

        <FORM ACTION='guessGame.jsp' METHOD='POST'>
            What's your guess? <INPUT TYPE='text' NAME='guess'/><BR/>
            <BR/>
            <INPUT TYPE='submit'/>
        </FORM>
        
    </BODY>
</HTML>
