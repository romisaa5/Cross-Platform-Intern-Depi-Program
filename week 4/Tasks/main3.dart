/*Create a program that parses a string to an integer using int.parse().
 Use try-on-catch to catch FormatException and display a message like "Invalid number format."*/
void main() {
  String input = "abc123"; 

  try {
    int number = int.parse(input);
    print("The number is: $number");
  } on FormatException {
    print("Invalid number format.");
  }
}
