class Allergies {

  List<int> createCurrent(int n) {
    var mypow = [128,64,32,16,8,4,2,1];
    List<int> current = [];
    n = n % 256;
    for (int i in mypow) { if (n >= i) { current.add(i); n = n - i; } }
    current.sort();
    return current;
  }

  bool allergicTo(String s, int n) {
    Map<String, int> mytab = { 'eggs': 1, 'peanuts': 2, 'shellfish': 4, 'strawberries': 8, 'tomatoes': 16, 'chocolate': 32, 'pollen': 64, 'cats': 128 };
    var current = createCurrent(n);
    if (current.indexOf(mytab[s] ?? 0) >= 0) { return true; }
    return false;
  }

  List<String> list(int n) {
    List<String> answer = [];
    Map<int, String> mytab = { 1:'eggs', 2:'peanuts', 4:'shellfish', 8:'strawberries', 16:'tomatoes', 32:'chocolate', 64:'pollen', 128:'cats' };
    var current = createCurrent(n);
    for (int i in current) { answer.add(mytab[i] ?? ''); }
    return answer;
  }

}