import 'dart:math';

class Darts {
  double distant(double x, double y) {
    return sqrt(x*x + y*y);
  }
  
  int score(double x, double y) {
    double d = distant(x,y);
    if (d <= 1) { return 10; }
    if (d > 1 && d <=5) { return 5; }
    if (d > 5 && d <= 10) { return 1; }
    return 0;
  }
}