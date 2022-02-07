class Diamond {
  
  List<String> rows(String s) {
    
    List<String> answer = [];
    List<String> answer1 = [];
    String alf = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    if (s == 'A') { return ['A']; }
    
    int max = (alf.indexOf(s)+1) * 2 - 1;
    int left = max~/2;  
    int right = max ~/2;
    int middle = -1;
    String temp = '';
    
    for (int i = 0; i < max; i++) {
      if (i < left) { temp = temp + ' '; }
      if (i == left) { temp = temp + 'A'; }
      if (i > right) { temp = temp + ' '; }
    }
    answer.add(temp);
    
    temp = '';
    for (int i = 1; i < max~/2; i++) {
      left = left - 1;
      right = right + 1;
      middle = middle + 2;
      for (int j = 0; j < max; j++) {
        if (j < left) { temp = temp + ' '; }
        if (j == left) { temp = temp + alf[i]; }
        if (j > left && j < right) { temp = temp + ' '; }
        if (j == right) { temp = temp + alf[i]; }
        if (j > right) { temp = temp + ' '; }
      }
      answer.add(temp);
      temp = '';
    }
    
    temp = s; 
    for (int i = 1; i < max-1; i++) { temp = temp + ' '; } 
    temp = temp + s;
    
    answer1 = answer;
    answer.add(temp);
    for (var i = answer1.length-2; i >= 0; i--) { answer.add(answer1[i]); }
    return answer;
  }
}