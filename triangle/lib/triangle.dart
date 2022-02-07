class Triangle {
  // существует ли треугольник
  bool real(double a, double b, double c) {
    return (a > 0 && b > 0 && c > 0 && (a+b)>c && (a+c)>b && (b+c)>a);
  }
  
  // равносторонние
  bool equilateral(double a, double b, double c) {
    return real(a,b,c) && a == b && a == c;
  }
  
  // равнобедренные
  bool isosceles(double a, double b, double c) {
    return real(a,b,c) && ((a == b) || (a == c) || (b == c) );
  }

  // разносторонние (не равносторонние, не равнобедренные)
  bool scalene(double a, double b, double c) {
    return real(a,b,c) && !equilateral(a,b,c) && !isosceles(a,b,c);
  }
}