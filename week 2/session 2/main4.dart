/*Write a function isEven(int n) that returns true if the number is even, using arrow syntax.*/
bool isEven(int n) => n % 2 == 0;
void main() {
  int number = 4;
  if (isEven(number)) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}