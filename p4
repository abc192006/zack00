public class MyPoint {
private int x;
private int y;
public MyPoint() {
this.x = 0;
this.y = 0;
}
public MyPoint(int x, int y) {
this.x = x;
this.y = y;
}
public void setXY(int x, int y) {
this.x = x;
this.y = y;
}
public int[] getXY() {
int[] coordinates = {x, y};
return coordinates;
}
public String toString() {
return &quot;(&quot; + x + &quot;, &quot; + y + &quot;)&quot;;
}
public double distance(int x, int y) {
int xDiff = this.x - x;
int yDiff = this.y - y;
return Math.sqrt(xDiff * xDiff + yDiff * yDiff);
}
public double distance(MyPoint another) {
int xDiff = this.x - another.x;
int yDiff = this.y - another.y;
return Math.sqrt(xDiff * xDiff + yDiff * yDiff);
}
public double distance() {
return Math.sqrt(x * x + y * y);
}
public static void main(String[] args) {
MyPoint point1 = new MyPoint(3, 4);
MyPoint point2 = new MyPoint(6, 8);

System.out.println(&quot;Point 1: &quot; + point1);
System.out.println(&quot;Point 2: &quot; + point2);

System.out.println(&quot;Distance between Point 1 and Point 2: &quot; +
point1.distance(point2));
System.out.println(&quot;Distance from Point 1 to origin: &quot; +
point1.distance());
}
}
