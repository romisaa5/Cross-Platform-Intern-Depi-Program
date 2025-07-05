/*Write a Dart program that has a number between 0 and 100, and prints:
"Excellent" if the number is 90 or above
"Good" if it is 75–89
"Average" if it is 50–74
"Fail" if below 50*/
void main() {
  int num = 65;
  if (num >= 90) {
    print('excellent');
  } else if (num >= 75 && num <= 89) {
    print('good');
  } else if (num >= 50 && num <= 74) {
    print('average');
  } else if (num < 50) {
    print('Fail');
  }
}
