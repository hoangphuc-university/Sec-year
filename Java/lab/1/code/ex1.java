import java.text.DecimalFormat;
import java.util.Scanner;

class NegetiveNumberException extends Exception {
    NegetiveNumberException(String messageString) {
        super(messageString);
    }
}

public class ex1 {
    static void checkNegRad(double radius) throws NegetiveNumberException {
        if (radius < 0) {
            throw new NegetiveNumberException("So am se tu dong chuyen thanh so duong");
        }
    }

    public static Double getInput() {
        double radius = -1;
        try {
            System.out.print("Nhap vao ban kinh duong tron: ");
            Scanner scanner = new Scanner(System.in);
            radius = scanner.nextDouble();
            scanner.close();
            checkNegRad(radius);
        } catch (NumberFormatException exception) {
            System.out.println("Exception: " + exception.getMessage());
        } catch (NegetiveNumberException exceptionNeg) {
            System.out.println("Exception: " + exceptionNeg.getMessage());
            radius *= -1.0;
        }
        return radius;
    }

    public static Double calculateCicurmferenceCir(Double radiusDouble) {
        Double res = 2 * Math.PI * radiusDouble;
        DecimalFormat decimalFormat = new DecimalFormat("#.###");
        return Double.parseDouble(decimalFormat.format(res));
    }

    public static void getOutput(Double radiusDouble) {
        System.out.println("Chu vi duong tron la: " + calculateCicurmferenceCir(radiusDouble));
    }

    public static void main(String[] args) {
        Double radiusDouble = getInput();
        getOutput(radiusDouble);
    }
}