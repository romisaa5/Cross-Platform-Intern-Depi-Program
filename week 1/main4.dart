void main() {
  var a = 8;
  if (a != a.toString()) {
    print('$a is not string ');
  } else {
    print('$a is string ');
  }
  //other soluition
  print(a is! String ? '$a is not string ' : '$a is string ');
}
