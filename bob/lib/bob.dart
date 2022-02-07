// Если вопрос? =? 'Sure.'
// Если КРИЧАТЬ => 'Whoa, chill out!'
// Если КРИЧАТЬ? => 'Calm down, I know what I'm doing!'
// Если пробельные символы => 'Fine. Be that way!'
// Если что-то другое => 'Whatever.'

bool check_small_alf(String s) {
  String small_alf = 'abcdefghijklmnopqrstuvwxyz';
  for (int i = 0; i < s.length; i++) {
    if (small_alf.indexOf(s[i]) > 0) { return true; }
  }
  return false;
}

bool check_big_alf(String s) {
  String big_alf = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  for (int i = 0; i < s.length; i++) {
    if (big_alf.indexOf(s[i]) > 0) { return true; }
  }
  return false;
}

bool check1(String s) => (check_small_alf(s) && s[s.length-1] == '?') || (!check_big_alf(s) && s[s.length-1] == '?');
bool check2(String s) => !check_small_alf(s);
bool check3(String s) => (!check_small_alf(s) && s[s.length-1] == '?');

class Bob {
  String response(String s) {
    s = s.trim();
    if (s.length == 0) { return "Fine. Be that way!"; }
    if (check1(s)) { return "Sure."; }
    if (check3(s)) { return "Calm down, I know what I'm doing!"; }
    if (check2(s)) { return "Whoa, chill out!"; }
    return 'Whatever.';
  }
}