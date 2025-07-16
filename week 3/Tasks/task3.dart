/*Task 3: Named Constructor 
Create a class User with a named constructor guest() that sets default values. 
Print the default info in main(). */
class User {
  String name;
  int age;

  User.guest()
      : name = 'Guest',
        age = 0;

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}
void main() {
  User user = User.guest();
  user.displayInfo();
}