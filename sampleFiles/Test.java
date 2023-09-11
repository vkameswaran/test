package sample_files;

import java.util.Scanner;

// classes, functions, enums, interfaces, methods, structs

enum TestEnum {
    TEST1,
    TEST2,
    TEST3
}

interface TestInterface {
    void test();
    void test2();
    void test3();
    void test4();
}

class TestClass implements TestInterface {
    public void test() {
        System.out.println("test");
    }
}

/**
 * This is a test class
 * @param <T> This is a generic type
 */

public class Test {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        sc.close();
        System.out.println(a);
    }

    public static void test() {
        System.out.println("test");
    }

    public static void test2() {
        System.out.println("test2");
    }
}
