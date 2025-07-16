/*Create a class named Student with the following properties:
name of type String
age of type int
marks of type double
Add a constructor using named parameters to initialize all the properties.
Also, add a method called displayDetails() that prints the student's details in a clear format.*/
class Student {
  String name;
  int age;
  double marks;

  Student({required this.name, required this.age, required this.marks});

  void displayDetails() {
    print('Student Name: $name');
    print('Age: $age');
    print('Marks: $marks');
  }
}
void main() {
  Student student1 = Student(name: 'Romisaa', age: 20, marks: 85.5);
  student1.displayDetails();

  Student student2 = Student(name: 'Body', age: 22, marks: 90.0);
  student2.displayDetails();
}