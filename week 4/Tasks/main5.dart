/*Create an enum called Day with values: Monday to Sunday. In the main function,
 use a switch statement to print whether it's a weekday or weekend.*/

enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

void main() {
  Day today = Day.Saturday;

  switch (today) {
    case Day.Monday:
    case Day.Tuesday:
    case Day.Wednesday:
    case Day.Thursday:
    case Day.Friday:
      print("It's a weekday.");
      break;
    case Day.Saturday:
    case Day.Sunday:
      print("It's the weekend!");
      break;
  }
}
