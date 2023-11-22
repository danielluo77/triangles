/// Returns 42.
int calculate() {
  return 6 * 7;
}

bool isReal(double a, double b, double c) {
  return a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a;
}

bool isEquilateral(double a, double b, double c) {
  // An equilateral triangle must have all sides the same and positive.
  return a > 0 && a == b && b == c;
}

bool isIsosceles(double a, double b, double c) {
  // Helper method to check if the sides can form a triangle
  bool isValidTriangle(double x, double y, double z) {
    return x + y > z && x + z > y && y + z > x;
  }

  // An isosceles triangle must have exactly two sides equal,
  // must not be equilateral, and must satisfy the triangle inequality theorem.
  if (!isValidTriangle(a, b, c)) return false;

  // Check for two equal sides, not allowing equilateral triangles
  bool twoSidesEqual =
      (a == b && b != c) || (a == c && c != b) || (b == c && c != a);
return twoSidesEqual && !(a == b && b == c);
}


bool isScalene(double a, double b, double c) {
  // Check if all sides are different and the triangle inequality holds
  return a > 0 &&
      b > 0 &&
      c > 0 &&
      a != b &&
      b != c &&
      a != c &&
      a + b > c &&
      a + c > b &&
      b + c > a;
}
bool isPythagorean(double a, double b, double c) {
  var sides = [a, b, c];
  sides.sort();
  return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2];
}
