void main() {
  var a = 9.5;
  if (a == a.toInt()) {
    print('$a is int ');
  } else {
    print('$a is not int');
  }
   //other soluition
  print(a is int ? '$a is int ' : '$a is not int ');
}
