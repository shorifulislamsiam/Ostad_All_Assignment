import 'dart:io';

triangle(){
  print("Enter the base of Triangle");
  double base= double.parse(stdin.readLineSync()!);
  print("Enter the height of Triangle");
  double height= double.parse(stdin.readLineSync()!);

  double Triangle_Area= 0.5 * base * height;

  print("The area of the triangle is: $Triangle_Area");
}
void main(){
  triangle();
}