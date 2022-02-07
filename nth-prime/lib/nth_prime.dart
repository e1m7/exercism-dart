class NthPrime {
  bool prime_or_not(int number) {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) { return false; }
    }
    return true;
  }
  
  int prime(int number) {
    if (number == 0) { throw Exception('Error'); }
    var counter = 0;
    var answer = 2;
    while (counter < number) {
      if (prime_or_not(answer)) { counter = counter + 1; }
      answer = answer + 1;
    }
    return answer - 1;
  }
}