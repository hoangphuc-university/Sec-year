import java.util.Scanner;

class InvalidZeroNumber extends Exception {
    InvalidZeroNumber(String messaString) {
        super(messaString);
    }
}

class Fraction {
    private int a;
    private int b;

    Fraction() {
        this.a = -1;
        this.b = -1;
    }

    public int get_a() {
        return this.a;
    }

    public int get_b() {
        return this.b;
    }

    public void set_a(int a) {
        this.a = a;
    }

    private void check_b_zero(int b) throws InvalidZeroNumber {
        if (b == 0) {
            throw new InvalidZeroNumber("Mau so khong duoc phep bang 0");
        }
    }

    public void set_b(Scanner scanner, int b) {
        try {
            check_b_zero(b);
        } catch (InvalidZeroNumber eInvalidZeroNumber) {
            System.err.println(eInvalidZeroNumber.getMessage());
            try {
                while (true) {
                    System.out.println("Nhap lai mau so cho den khi nao khac 0");
                    b = scanner.nextInt();
                    if (b != 0)
                        break;
                }
            } catch (NumberFormatException eNumberFormatException) {
                eNumberFormatException.getMessage();
            }
        } finally {
            this.b = b;
        }
    }

    public double calculate() {
        return this.a * 1.0 / this.b;
    }
}

public class ex2 {
    static void getInput(Scanner scanner, Fraction fraction) throws NumberFormatException {
        System.out.println("Moi nguoi dung nhap vao tu so va mau so.");
        int a, b;
        a = scanner.nextInt();
        b = scanner.nextInt();

        fraction.set_a(a);
        fraction.set_b(scanner, b);
    }

    static void getOutput(Fraction fraction) {
        System.out.printf("%.3f", fraction.calculate());
    }

    static void exec() {
        Scanner scanner = new Scanner(System.in);
        Fraction fraction = new Fraction();
        getInput(scanner, fraction);
        getOutput(fraction);
        scanner.close();
    }

    public static void main(String[] args) {
        exec();
    }
}