Bird f1 = new Bird();
f1.fly();

Plane f2 = new Plane();
f2.fly();

List<Flyable> FlyingThings = new List<Flyable>();
FlyingThings.add(f1);
FlyingThings.add(f2);

for(Flyable each : FlyingThings) {
     each.fly();   
}
