class PhoneNumber {
  dynamic clean(String n) {
    String a = '0123456789';
    String b = '';
    for (int i = 0; i < n.length; i++) {
      if (a.indexOf(n[i]) >= 0) {
        b = b + n[i];
      }
    }
    if (b.length == 11 && b[0] == '1') { b = b.substring(1); }
    if (b.length == 10 && (b[0] == '1' || b[0] == 0)) { throw Exception("Error1"); }
    if (b.length != 10) { throw Exception("Error2"); }
    if (b[3] == '0' || b[3] == '1') { throw Exception("Error3"); }
    return b;
  }
}