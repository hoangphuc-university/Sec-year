import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;

public class ex4 {
    private static int[] computeLPSArray(String y) {

        int m = y.length();
        int[] lps = new int[m];
        int len = 0;
        int i = 1;
        while (i < m) {
            if (y.charAt(i) == y.charAt(len)) {
                len++;
                lps[i] = len;
                i++;
            } else {
                if (len != 0) {
                    len = lps[len - 1];
                } else {
                    lps[i] = 0;
                    i++;
                }
            }
        }
        return lps;
    }

    private static List<Integer> KMPSearch(String x, String y) {
        List<Integer> result = new ArrayList<>();
        int n = x.length();
        int m = y.length();

        int[] lps = computeLPSArray(y);

        int i = 0;
        int j = 0;

        while (i < n) {
            if (y.charAt(j) == x.charAt(i)) {
                i++;
                j++;
            }

            if (j == m) {
                result.add(i - j);
                j = lps[j - 1];
            } else if (i < n && y.charAt(j) != x.charAt(i)) {
                if (j != 0) {
                    j = lps[j - 1];
                } else {
                    i++;
                }
            }
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println("Nhap vao hai chuoi x va y");
        String x, y;
        Scanner scanner = new Scanner(System.in);
        x = scanner.nextLine();
        y = scanner.nextLine();
        scanner.close();

        // 1
        System.out.println("Tong chieu dai cua chuoi x: " + x.length());
        // 2
        System.out.println("Ba ky tu dau tien cua chuoi x: " + x.substring(0, 3));
        // 3
        System.out.println("Ba ky tu cuoi cua chuoi x: " + x.substring(x.length() - 3, x.length()));
        // 4
        System.out.println("Ky tu thu 6 cua chuoi x la: " + x.charAt(5));
        // 5
        String str_1 = new String(x.substring(0, 3) + y.substring(y.length() - 3, y.length()));
        System.out.println("Chuoi moi gom ba ky tu dau tien cua chuoi x va 3 ky tu cuoi cung cua chuoi y la: " + str_1);
        // 6
        if (x.equals(y) == true) {
            System.out.println("Hai chuoi nay bang nhau tuyet doi");
        } else {
            System.out.println("Hai chuoi nay khong bang nhau tuyet doi");
        }
        // 7
        if (x.equalsIgnoreCase(y) == true) {
            System.out.println("Hai chuoi nay bang nhau tuong doi");
        } else {
            System.out.println("Hai chuoi nay khong bang nhau mot cach tuong doi");
        }
        // 8
        System.out.println("Vi tri xuat hien cua y o trong x la: " + x.indexOf(y));
        // 9
        System.out.println("Cac vi tri y xuat hien ben trong x la:");
        List<Integer> hienDien = KMPSearch(x, y);
        if (hienDien.isEmpty()) {
            System.out.println("Khong ton tai y trong x");
        } else {
            System.out.println("Co su hien dien cua y trong x: " + hienDien);
        }
    }
}
