OOP Practice Task that give you some more idea 
# Coding Task OOP2

1. Create a class called Dealership
   * instance fields : 
     - name as String 
     - eCars as List<ElectricCar>
   * constructor 
     - 2 params constructor to set 
       - the name field
       - the eCars field
   * methods 
     - public void showCars with no param
       - loop through each car and print 
         - model is ModelHere and price is price here
     - public method getCarCount with no param
       - return the count of the eCars
     - public void method discountAllCars
       - @param discountAmount as Integer
       - loop through each car 
       - and reduce each car price by discountAmount
     Optionally : 
     - public void method addCar
       - @param newCar as ElectricCar
       - add the provided car to the eCars list

Create List of ElectricCar and add 3 ElectricCars
Create Dealership object with name and List of cars above 
Call the methods you created