class Hamming {
  int? distance(String s1, String s2) {
    if (s1 == '' && s2 == '') return 0;
    if (s1.length != s2.length) throw ('Error');
    int result = 0;
    for (int i = 0; i < s1.length; i++) {
      if (s1[i] != s2[i]) {
        result = result + 1;
      }
    }
    return result;
  }
}