class DifferenceOfSquares {
  
  // квадрат суммы
  int squareOfSum(int value) {
    var result = 0;
    for (var i = 1; i <= value; i++) {
      result = result + i;
    }
    return result * result;
  }
  
  // сумма квадратов
  int sumOfSquares(int value) {
    var result = 0;
    for (var i = 1; i <= value; i++) {
      result = result + i*i;
    }
    return result;
  }
  
}