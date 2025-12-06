abstract class Shape {
double dim1;
double dim2;
abstract double calculateArea();
abstract double calculatePerimeter();
}
class Circle extends Shape {
Circle(double radius) {
this.dim1 = radius;
}
double calculateArea() {
return Math.PI * dim1 * dim1;
}
double calculatePerimeter() {
return 2 * Math.PI * dim1;
}
}
class Triangle extends Shape {
Triangle(double dim1, double dim2) {
this.dim1 = dim1;
this.dim2 = dim2;
}
double calculateArea() {
return 0.5 * dim1 * dim2;
}
double calculatePerimeter() {
return dim1 + dim2 + Math.sqrt(dim1 * dim1 + dim2 * dim2);
}
}
public class Main {
public static void main(String[] args) {
Circle circle = new Circle(5.0);
Triangle triangle = new Triangle(3.0, 4.0);
System.out.println(&quot;Circle - Area: &quot; + circle.calculateArea()
+ &quot;, Perimeter: &quot; + circle.calculatePerimeter());
System.out.println(&quot;Triangle - Area: &quot; +
triangle.calculateArea() + &quot;, Perimeter: &quot; +
triangle.calculatePerimeter());
}
}
