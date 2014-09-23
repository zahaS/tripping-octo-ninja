package guess.game;

public class GuessGameLogic {
    
    private int theNumber;
    private int howManyGuessesLeft;
    
    // JavaBeans ��Ģ�� ���� argument ���� ������ ����
    public GuessGameLogic() { }
    
    // �ʱ�ȭ(���� ������ ������ ���� ����� ��) �޼ҵ�
    public void initialize(int startNumber, int endNumber, int guessesLeft) {
        this.theNumber = generateRandomNumber(startNumber, endNumber);
        System.out.println("������ ���� :" + this.theNumber);
        this.howManyGuessesLeft = guessesLeft;
    }
    
    // ���� ���� ���θ� Ȯ���� �ִ� �޼ҵ�
    public boolean isCorrectGuess(int guess) {
        howManyGuessesLeft--;
        return (guess == theNumber);
    }
    
    // ���� ȸ���� �˷��ִ� �޼ҵ�
    public int getHowManyGuessesLeft() {
        return howManyGuessesLeft;
    }
    
    private int generateRandomNumber(int startNumber, int endNumber) {
        double range = (double) (endNumber - startNumber + 1);
        return startNumber + (int) (Math.random() * range);
    }
}
