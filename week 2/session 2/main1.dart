/*Write a function calculateArea that calculates the area of a rectangle, given width and height.*/
int calculateArea(int width, int height) {
  return width * height;
}
void main() {
  int width = 5;
  int height = 10;
  int area = calculateArea(width, height);
  print('The area of the rectangle is: $area');
}