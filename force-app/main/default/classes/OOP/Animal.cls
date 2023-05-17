public abstract class Animal {
    
    // instance fields name, age
    public String name ;
    public Integer age;


    // constructor to set those 2 fields 
    public animal (String name, Integer age){
        this.name = name;        
        this.age  = age;

    }

    // abstract method called makeNoise 
    public abstract void makeNoise(); 


    //abstract method called getInfo()
    //it has param as food
    //return String
    public abstract String getInfo(String food);

    public void eat(){
        //ALL ANIMALS EAT!
    }

}