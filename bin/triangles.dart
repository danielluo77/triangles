import 'package:triangles/triangles.dart' as triangles;
import "dart:io";

void main(List<String> arguments) {

  print('Enter the first length: ');
  double a = double.parse(stdin.readLineSync()!);

  print('Enter the second length: ');
  double b = double.parse(stdin.readLineSync()!);

  print('Enter the third length: ');
  double c = double.parse(stdin.readLineSync()!);

  if (!triangles.isReal(a, b, c)) {
    print('The lengths do not form a triangle.');
  } else {
    if (triangles.isEquilateral(a, b, c)) {
      print('This is an Equilateral triangle');
    } 
    if (triangles.isIsosceles(a, b, c)) {
      print('This is an Isosceles triangle');
    }
     if (triangles.isScalene(a, b, c)) {
      print('This is a Scalene triangle');
    }

    if (triangles.isPythagorean(a, b, c)) {
      print('This is a Pythagorean triangle');
    }
  }
}

