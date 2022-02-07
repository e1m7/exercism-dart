class PascalsTriangle {
  List<List<int>> rows(int number) {
    if (number == 0) { return [[]]; };
    if (number == 1) { return [[1]]; };
    if (number == 2) { return [[1],[1,1]]; };

    List<List<int>> answer = [[1]];
    List<int> old_line = [1,1];
    
    while (number >= 3) {
      List<int> new_line = [1];
      for (int i = 0; i < old_line.length - 1; i++) { 
        new_line.add(old_line[i] + old_line[i+1]); 
      }
      new_line.add(1);
      answer.add(new_line);
      old_line = new_line;
      number = number - 1;
    }
    return answer;
  }
}