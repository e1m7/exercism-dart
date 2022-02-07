class Isogram {
  bool isIsogram(String s) {
    Set<String> answer = {};
    s = s.toLowerCase();
    int temp = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == ' ' || s[i] == '-') { temp++; } else { answer.add(s[i]); }
    }
    return s.length == answer.length + temp;
  }
}