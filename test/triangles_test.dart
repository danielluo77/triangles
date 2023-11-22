import 'package:triangles/triangles.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

    test('isReal tesing', () {
    expect(isReal(1.0, 1.0, 1.0), true);
    expect(isReal(1.0, 2.0, 3.0), false);
    expect(isReal(3.0, 2.0, 1.0), false);
    expect(isReal(0, 0, 0), false);
    expect(isReal(3, 4, 5), true);
    expect(isReal(-3, -4, -5), false);
  });
  test('isEquilateral testing', () {
      expect(isEquilateral(1.0, 1.0, 1.0), true);
      expect(isEquilateral(2.0, 2.0, 3.0), false);
      expect(isEquilateral(3.0, 4.0, 5.0), false);
      expect(isEquilateral(0, 0, 0), false);
      expect(isEquilateral(-1, -1, -1), false);
    });

    test('isIsosceles testing', () {
      expect(isIsosceles(3.0, 2.0, 2.0), true);
      expect(isIsosceles(3.0, 3.0, 3.0), false);
      expect(isIsosceles(3.0, 4.0, 5.0), false);
      expect(isIsosceles(1.0, 1.0, 0), false);
      expect(isIsosceles(0, -1, -1), false);
    });

    test('isScalene testing', () {
      expect(isScalene(3.0, 4.0, 5.0), true);
      expect(isScalene(3.0, 3.0, 3.0), false);
      expect(isScalene(3.0, 2.0, 3.0), false);
      expect(isScalene(-3, -4, -5), false);
    });

    test('isPythagorean testing', () {
      expect(isPythagorean(3.0, 4.0, 5.0), true);
      expect(isPythagorean(13.0, 12.0, 5.0), true);
      expect(isPythagorean(2.0, 3.0, 10.0), false);
      expect(isPythagorean(-3, -4, -5), false);
    });
  }

