/*Task 9: Polymorphism 
Create a class Animal with a method makeSound(). 
Create two subclasses Dog and Cat that override this method. 
In main(), use polymorphism to call the overridden method. */
class Animal {
  void makeSound() {
    print('Animal makes a sound.');
  }
}
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks.');
  }
}
class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows.');
  }
}
void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();
  
  myDog.makeSound(); 
  myCat.makeSound();
}