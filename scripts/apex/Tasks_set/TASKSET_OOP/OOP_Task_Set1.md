# Coding Task 

1. Create a abstract class called `Shape`
   * instance fields : 
     - `name` as String 
     - `area` as Decimal
   * constructor 
     - 1 param|arg constructor to set the `name`
   * method 
     - abstract void method `calculateArea` with no param

2. Create concrete child class of `Shape` - class `Rectangle` 
   * instance fields : 
     - `width` as Decimal 
     - `height` as Decimal
   * constructor 
     - no param|arg constructor to set 
       - the `name` to `Just Rectangle`
       - width and height to 1
     - 3 arg constructor to set 
       - `name`, `width` ,`height` 
   * method 
     - implement `calculateArea` and calculate the `area` 
       - set the value of `area` to `width`*`height`

3. Create concrete child class of `Shape` - class `Circle` 
   * instance fields : 
     - `radius` as Decimal 
   * constructor 
     - no param|arg constructor to set 
       - the `name` to `Just Circle`
       - `radius` to 1
     - 2 arg constructor to set 
       - `name`, `radius`
   * method 
     - implement `calculateArea` and calculate the `area` 
       - set the value of `area` to `Math.PI`*`radius`*`radius`



4. Create a child class of `Rectangle` - class `Square` 
   * instance fields : 
     - `side` as Decimal 
   * constructor 
     - 2 arg constructor to set 
       - `name`, `side`
       - call parent 3 arg constructor as below
       - `super(name,side,side)`

5. Create an interface called `Drawable`
   * abstract method `draw` with no param no return type
Let `Rectangle` , `Circle` implements `Drawable` interface
   - provide implementation for draw method
     - simply print the step to draw the shape
   - `public class Rectangle extends Shapes implements Drawable{...}` 

6. Add a non-abstract void method called `displayShapeInfo` to `Shape` class
 - Print :  The Shape is `nameOfShapeHere` and the `area` is `areaValueHere`

7. Create an interface called `Rollable` 
   * abstract void method `roll` 
   * `Circle` implements `Rollable`
   * ```java
     public class Circle extends Shapes implements Drawable,Rollable{

     }
     ```