/*Create a function doubleValue(int x) that returns double of x using single-line arrow syntax.*/
int doubleValue(int x) => x * 2;
void main() {
  int number = 5;
  int result = doubleValue(number);
  print('Double of $number is $result');
}