class Raindrops {
  String convert(int n) {
    String answer = '';
    if (n % 3 == 0) { answer = answer + 'Pling'; }
    if (n % 5 == 0) { answer = answer + 'Plang'; }
    if (n % 7 == 0) { answer = answer + 'Plong'; }
    if (answer == '') { answer = n.toString(); }
    return answer;
  }
}