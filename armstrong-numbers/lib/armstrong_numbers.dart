import "dart:math";

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    num savenumber = number;
    num result = 0;
    var count = number.toString().length;
    while (number > 0) {
      result = result + pow(number % 10, count);
      number = number ~/ 10;
    }
    return savenumber == result;
  }
}