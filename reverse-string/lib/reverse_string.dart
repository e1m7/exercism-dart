String reverse(String s) {
  if (s == '') { return ''; }
  String answer = '';
  for (int i = s.length-1; i >= 0; i--) {
    answer = answer + s[i];
  }
  return answer;
}