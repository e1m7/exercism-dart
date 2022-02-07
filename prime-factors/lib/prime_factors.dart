class PrimeFactors {
  List<int> factors(int n) {
    List<int> answer = [];
    if (n == 1) { return answer; }
    int d = 2;
    while (n > 1) {
      if (n % d == 0) {
        answer.add(d);
        n = n ~/ d;
      } else {
        d = d + 1;
      }
    }
    return answer;
  }
}
