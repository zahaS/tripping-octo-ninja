package guess.game;

public class GuessGameLogic {
    
    private int theNumber;
    private int howManyGuessesLeft;
    
    // JavaBeans 규칙에 맞춰 argument 없는 생성자 구현
    public GuessGameLogic() { }
    
    // 초기화(범위 내에서 임의의 수를 만들어 냄) 메소드
    public void initialize(int startNumber, int endNumber, int guessesLeft) {
        this.theNumber = generateRandomNumber(startNumber, endNumber);
        System.out.println("생성된 숫자 :" + this.theNumber);
        this.howManyGuessesLeft = guessesLeft;
    }
    
    // 값의 정답 여부를 확인해 주는 메소드
    public boolean isCorrectGuess(int guess) {
        howManyGuessesLeft--;
        return (guess == theNumber);
    }
    
    // 남은 회수를 알려주는 메소드
    public int getHowManyGuessesLeft() {
        return howManyGuessesLeft;
    }
    
    private int generateRandomNumber(int startNumber, int endNumber) {
        double range = (double) (endNumber - startNumber + 1);
        return startNumber + (int) (Math.random() * range);
    }
}
