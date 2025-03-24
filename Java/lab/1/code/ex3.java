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

    private void check_denominator_zero(double denominator) throws InvalidZeroNumber {
        if (denominator == 0) {
            throw new InvalidZeroNumber("Mau so khong duoc phep bang 0 de thuc hien phep chia");
        }
    }

    public void set_b(Scanner scanner, int b) {
        try {
            check_denominator_zero(b);
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
            if (b < 0) {
                this.a *= -1;
                this.b = -b;
            } else
                this.b = b;
        }
    }

    private int GreatestCommonDivisor() {
        int _a = this.a;
        int _b = this.b;
        while (_b != 0) {
            int temp = _b;
            _b = _a % _b;
            _a = temp;
        }
        return Math.abs(_a);
    }

    public void reduceFraction() {
        int GCD = GreatestCommonDivisor();
        this.a /= GCD;
        this.b /= GCD;
    }

    public Fraction addFraction(Fraction fraction) {
        Fraction res = new Fraction();
        res.set_a(this.a * fraction.get_b() + this.b * fraction.get_a());
        res.set_b(null, this.b * fraction.get_b());
        res.reduceFraction();
        return res;
    }

    public Fraction subtractFraction(Fraction fraction) {
        Fraction res = new Fraction();
        res.set_a(this.a * fraction.get_b() - this.b * fraction.get_a());
        res.set_b(null, this.b * fraction.get_b());
        res.reduceFraction();
        return res;
    }

    public Fraction multiplyFraction(Fraction fraction) {
        Fraction resFraction = new Fraction();
        resFraction.set_a(this.a * fraction.get_a());
        resFraction.set_b(null, (this.b * fraction.get_b()));
        resFraction.reduceFraction();
        return resFraction;
    }

    public Fraction divFraction(Fraction fraction) throws InvalidZeroNumber {
        Fraction resFraction = new Fraction();
        try {
            check_denominator_zero(fraction.get_a() * 1.0 / fraction.get_b());
        } catch (InvalidZeroNumber eInvalidZeroNumber) {
            System.err.println(eInvalidZeroNumber.getMessage());
            return resFraction;
        }
        resFraction.set_a(this.a * fraction.get_b());
        resFraction.set_b(null, this.b * fraction.get_a());
        resFraction.reduceFraction();
        return resFraction;
    }

    @Override
    public String toString() {
        return this.b == 1 ? String.valueOf(this.a) : new String(this.a + "/" + this.b);
    }
}

public class ex3 {
    static void getInput(Scanner scanner, Fraction fraction_1, Fraction fraction_2) throws NumberFormatException {
        System.out.println("Moi nguoi dung nhap vao tu so va mau so thu nhat.");
        int a, b;
        a = scanner.nextInt();
        b = scanner.nextInt();

        fraction_1.set_a(a);
        fraction_1.set_b(scanner, b);
        fraction_1.reduceFraction();

        System.out.println("Moi nguoi dung nhap vao tu so va mau so thu hai.");
        a = scanner.nextInt();
        b = scanner.nextInt();

        fraction_2.set_a(a);
        fraction_2.set_b(scanner, b);
        fraction_2.reduceFraction();
    }

    static void getOutput(Fraction fraction_1, Fraction fraction_2) throws InvalidZeroNumber {
        Fraction sum = fraction_1.addFraction(fraction_2);
        Fraction subtraction = fraction_1.subtractFraction(fraction_2);
        Fraction multiplication = fraction_1.multiplyFraction(fraction_2);
        Fraction division = fraction_1.divFraction(fraction_2);

        System.out.println("sum: " + sum);
        System.out.println("minus: " + subtraction);
        System.out.println("multiplication: " + multiplication);
        System.out.println("division: " + division);
    }

    static void exec() throws InvalidZeroNumber {
        Fraction fraction_1 = new Fraction();
        Fraction fraction_2 = new Fraction();
        Scanner scanner = new Scanner(System.in);
        getInput(scanner, fraction_1, fraction_2);
        getOutput(fraction_1, fraction_2);
        scanner.close();
    }

    public static void main(String[] args) throws InvalidZeroNumber {
        exec();
    }
}