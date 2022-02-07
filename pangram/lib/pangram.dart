class Pangram {
  bool isPangram(String s) {
    String a = "abcdefghijklmnopqrstuvwxyz";
    Set<String> b = {};
    s = s.toLowerCase();
    for (int i = 0; i < s.length; i++) {
      if (a.indexOf(s[i]) >= 0) {
        b.add(s[i]);
      }
    }
    return b.length == 26;
  }
}