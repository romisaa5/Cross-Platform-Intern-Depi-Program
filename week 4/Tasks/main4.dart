/*Create a custom exception called InvalidAgeException. Write a program that accepts an age, 
throws the custom exception if the age is below 18, and prints a success message otherwise.*/

class InvalidAgeException implements Exception {
  String errorMessage() => "Age must be 18 or older.";
}

void checkAge(int age) {
  if (age < 18) {
    throw InvalidAgeException();
  } else {
    print("Access granted, Age is valid.");
  }
}

void main() {
  int age = 16; 

  try {
    checkAge(age);
  } on InvalidAgeException catch (e) {
    print(e.errorMessage());
  }
}
