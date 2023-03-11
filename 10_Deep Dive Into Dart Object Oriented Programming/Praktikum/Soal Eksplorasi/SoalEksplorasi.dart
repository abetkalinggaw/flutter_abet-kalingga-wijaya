// Abet Kalingga Wijaya

import 'dart:io';
import 'dart:math';

// Interface Shape
abstract class Shape {
  int getArea();
  int getPerimeter();
}

// Class Circle implements Shape
class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  int getArea() {
    return (pi * pow(radius, 2)).toInt();
  }

  @override
  int getPerimeter() {
    return (2 * pi * radius).toInt();
  }
}

// Class Square implements Shape
class Square implements Shape {
  int side;

  Square(this.side);

  @override
  int getArea() {
    return pow(side, 2).toInt();
  }

  @override
  int getPerimeter() {
    return (4 * side).toInt();
  }
}

// Class Rectangle implements Shape
class Rectangle implements Shape {
  int width;
  int height;

  Rectangle(this.width, this.height);

  @override
  int getArea() {
    return (width * height).toInt();
  }

  @override
  int getPerimeter() {
    return (2 * (width + height)).toInt();
  }
}

void main() {
  // Input dari pengguna
  stdout.write('Masukkan Jari Jari (Lingkaran) : ');
  var circle = Circle(int.parse(stdin.readLineSync()!));
  stdout.write('Masukkan Sisi (Persegi) : ');
  var square = Square(int.parse(stdin.readLineSync()!));
  print('Masukkan Panjang dan Lebar (Persegi Panjang) : ');
  var rectangle = Rectangle(
      int.parse(stdin.readLineSync()!), int.parse(stdin.readLineSync()!));

  // Output
  print('---- Luas dan keliling lingkaran ----');
  print('Luas : ${circle.getArea()} cm');
  print('Keliling : ${circle.getPerimeter()} cm');

  print('\n---- Luas dan keliling persegi ----');
  print('Luas : ${square.getArea()} cm');
  print('Keliling : ${square.getPerimeter()} cm');

  print('\n---- Luas dan keliling persegi panjang ----');
  print('Luas : ${rectangle.getArea()} cm');
  print('Keliling : ${rectangle.getPerimeter()} cm');
}
