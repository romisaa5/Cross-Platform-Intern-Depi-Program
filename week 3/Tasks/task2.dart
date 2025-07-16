/*Task 2: Constructor Practice 
Create a class Student with a constructor that accepts name and grade. 
Use this to assign values. 
In main(), create and print the student info. */
class Student {
  String name;
  String grade;
  Student(this.name, this.grade);
  void displayInfo() {
    print('Name: $name');
    print('Grade: $grade');
  }
}
void main() {
  Student student = Student('Romisaa', 'A');
  student.displayInfo();
}