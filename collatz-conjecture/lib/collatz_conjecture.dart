class CollatzConjecture {
  int? steps(int number) {
    if (number <= 0) { throw Exception('Error'); }
    int answer = 0;
    while (number != 1) {
      answer = answer + 1;
      if (number % 2 == 0) { number = number ~/ 2; } else { number = number * 3 + 1; }
    }
    return answer;  
  }
}