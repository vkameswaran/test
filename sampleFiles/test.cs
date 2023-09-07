// test c# file to test the parser

using System;

namespace Test
{
    public class Test
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}

// classes, functions, enums, interfaces, methods, structs

// class

public class Test
{
    public static void Main(string[] args)
    {
        Console.WriteLine("Hello World!");
    }
}

// function

public static void Main(string[] args)
{
    Console.WriteLine("Hello World!");
}

// enum

public enum Days { Sun, Mon, Tue, Wed, Thu, Fri, Sat };

// interface

public interface IAnimal
{
    void animalSound(); // interface method (does not have a body)
    void run(); // interface method (does not have a body)
}

// method

public void animalSound()
{
    // code
}

// struct

public struct Books
{
    public string title;
    public string author;
    public string subject;
    public int book_id;
}
