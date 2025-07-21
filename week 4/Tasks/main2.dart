/*Create a Dart program that divides two numbers. 
Use try-catch to handle the error when dividing by zero, 
and print an appropriate message.*/
void main() {
  int num1 = 10;
  int num2 = 0;

  try {
    double result = num1 / num2;
    print("Result: $result");
  } catch (e) {
    print("Error: Cannot divide by zero.");
  }
}
