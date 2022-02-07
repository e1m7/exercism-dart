class Minesweeper {
  List<String> s;

  Minesweeper(this.s);
  
  List<String> annoted() {
    List<String> a = [];
    var rows = s.length;
    var cols = s[0].length;

    String temp = '';
    for (int i=0; i<cols + 2; i++) { temp = temp + '@'; }
    a.add(temp);
    for (int i = 0; i < rows; i++) {
      temp = '@';
      for (int j = 0; j < cols; j++) { temp = temp + s[i][j]; }
      temp = temp + '@';
      a.add(temp);
    }
    a.add(a[0]);
    
    for (int i = 1; i < a.length - 1; i++) {
      temp = '';
      for (int j = 1; j < a[0].length - 1; j++) {
        if (a[i][j] == '*') {
          temp = temp + '*';
        } else {
          var m = 0;
          if (a[i-1][j] == '*') { m = m + 1; }
          if (a[i+1][j] == '*') { m = m + 1; }
          if (a[i][j-1] == '*') { m = m + 1; }
          if (a[i][j+1] == '*') { m = m + 1; }
          if (a[i-1][j-1] == '*') { m = m + 1; }
          if (a[i+1][j+1] == '*') { m = m + 1; }
          if (a[i-1][j+1] == '*') { m = m + 1; }
          if (a[i+1][j-1] == '*') { m = m + 1; }
          if (m == 0) { temp = temp + ' '; } else { temp = temp + m.toString();  
          }
        }
      }
      s[i-1] = temp;
    }
    return s;
  }
  
  @override
  String toString() {
    String answer = '';
    for (int i = 0; i < s.length; i++) { answer = answer + s[i] + "\n"; }
    return answer;
  }
}