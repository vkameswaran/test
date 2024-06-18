// Package declaration
package com.example

// Imports
import scala.collection.mutable.ArrayBuffer

// Traits
trait Shape {
  def area(): Double
}

// Classes
class Circle(val radius: Double) extends Shape {
  override def area(): Double = math.Pi * radius * radius
}

class Rectangle(val width: Double, val height: Double) extends Shape {
  override def area(): Double = width * height
}

// Objects
object MathUtils {
  def square(x: Double): Double = x * x
}

// Case Classes
case class Person(name: String, age: Int)

// Enumerations
object Color extends Enumeration {
  val Red, Green, Blue = Value
}

// Main Object
object Main {
  def main(args: Array[String]): Unit = {
    val circle = new Circle(5.0)
    val rectangle = new Rectangle(3.0, 4.0)
    println(s"Circle area: ${circle.area()}")
    println(s"Rectangle area: ${rectangle.area()}")

    val squared = MathUtils.square(4.0)
    println(s"Squared: $squared")

    val person = Person("Bob", 30)
    println(s"Person: $person")

    val color = Color.Red
    println(s"Color: $color")
  }
}