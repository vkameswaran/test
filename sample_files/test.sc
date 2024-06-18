// Variables
val x: Int = 10
var y: String = "Hello, World!"

// Functions
def greet(name: String): Unit = {
  println(s"Hello, $name!")
}

// Classes and Objects
class Person(val name: String, var age: Int) {
  def sayHello(): Unit = {
    println(s"Hello, my name is $name and I'm $age years old.")
  }
}

object Main {
  def main(args: Array[String]): Unit = {
    val person = new Person("Alice", 25)
    person.sayHello()
  }
}

// Control Structures
val numbers = List(1, 2, 3, 4, 5)
for (num <- numbers) {
  println(num)
}

val evenNumbers = numbers.filter(_ % 2 == 0)
println(evenNumbers)

// Pattern Matching
val result = "success"
result match {
  case "success" => println("Operation successful!")
  case "failure" => println("Operation failed!")
  case _ => println("Unknown result")
}