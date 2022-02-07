Map<String, int> tab = {
  'black': 0,
  'brown': 1,
  'red': 2,
  'orange': 3,
  'yellow': 4,
  'green': 5,
  'blue': 6,
  'violet': 7,
  'grey': 8,
  'white': 9
};

class ResistorColor {
  int colorCode(String name) {
    int answer = tab[name] ?? 0;
    return answer;
  }
  
  List<String> colors() {
    List<String> answer = [];
    for(var key in tab.keys) { answer.add(key); }
    return answer;
  }
}