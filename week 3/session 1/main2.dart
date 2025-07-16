/*
Create variables of different types:
String, int, double, bool, List, and Map
Create a variable that can be null (nullable), and handle it safely using ?? or if.
 */
void main() {
  // Variables of different types
  String name = 'Alice';
  int age = 30;
  double height = 5.7;
  bool isStudent = false;
  List<String> hobbies = ['reading', 'hiking', 'coding'];
  Map<String, String> address = {'city': 'Wonderland', 'country': 'Fantasy'};

  // Nullable variable
  String? favoriteBook;
  String bookMessage = favoriteBook ?? 'No favorite book specified';

  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is Student: $isStudent');
  print('Hobbies: $hobbies');
  print('Address: $address');
  print('Favorite Book: $bookMessage');
}
