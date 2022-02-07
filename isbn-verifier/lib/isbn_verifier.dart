String check1(String s) {
  String answer = '';
  for (int i = 0; i < s.length; i++) {
    if (s[i] != '-') { answer = answer + s[i]; }
  }
  return answer;
}

bool check2(String s) {
  bool f = true;
  String a = "0123456789X";
  for (int i = 0; i < s.length; i++) {
    if (a.indexOf(s[i]) < 0) { f = false; break; }
    if (s[i] == 'X' && i != 9) { f = false; break; }
  }
  return f;
}

bool check3(String s) {
  int answer = 0;
  for (int i = 0; i <= 8; i++) { answer = answer + int.parse(s[i])*(s.length - i); }
  if (s[9] == 'X') { answer = answer + 10; } else { answer = answer + int.parse(s[9]); }
  return answer % 11 == 0;
}

bool isValid(String s) {
  s = check1(s);                               // 1) delete symbols '-'
  if (!check2(s)) { return false; }            // 2) check: s = '0-9X' or s = '0-9'
  if (s.length != 10) { return false; }        // 3) check: length s = 10
  if (!check3(s)) { return false; }            // 4) check: s mod 11 = 0
  return true;
}