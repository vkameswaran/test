// sample rust file to test the parser

// this is a comment
fn main() {
    println!("Hello, world!");
}

// create classes, functions, enums, interfaces, methods, structs, traits, types to test the parser
struct Person {
    name: String,
    age: u32,
}

impl Person {
    fn new(name: String, age: u32) -> Self {
        Self { name, age }
    }

    fn say_hello(&self) {
        println!("Hello, my name is {} and I am {} years old", self.name, self.age);
    }
}

enum Color {
    Red,
    Green,
    Blue,
}

trait Printable {
    fn print(&self);
}

impl Printable for Color {
    fn print(&self) {
        match self {
            Color::Red => println!("Red"),
            Color::Green => println!("Green"),
            Color::Blue => println!("Blue"),
        }
    }
}

fn add(a: i32, b: i32) -> i32 {
    a + b
}
