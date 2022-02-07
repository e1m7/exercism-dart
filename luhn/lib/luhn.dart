class Luhn {
  bool valid(String s) {
    String tab = '0123456789';
    List<int> news = [];
    int answer = 0;
    
    for (int i = 0; i < s.length; i++) {
      if (tab.indexOf(s[i]) >= 0) { 
        news.add(int.parse(s[i])); 
      } else if (s[i] == ' ' || s[i] == ' ') { 
        continue; 
      } else { 
        return false; 
      }
    }
    if (news.length <= 1) { return false; }
    int f = news.length % 2;
    
    if (f == 0) {
      for (int i = 0; i < news.length; i++) {
        if (i % 2 == 1) { 
          answer = answer + news[i]; 
        } else {
          var t = 2 * news[i];
          if (t > 9) { t = t - 9; }
          answer = answer + t;
        }
      }
    }
    
    if (f == 1) {
      for (int i = 0; i < news.length; i++) {
        if (i % 2 == 0) { 
          answer = answer + news[i]; 
        } else {
          var t = 2 * news[i];
          if (t > 9) { t = t - 9; }
          answer = answer + t;
        }
      }
    }    
    return (answer % 10 == 0);
  }
}