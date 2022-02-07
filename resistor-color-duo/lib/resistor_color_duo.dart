class ResistorColorDuo {
  int value(List<String> val) {
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
    int digit1 = tab[val[0]] ?? 0;
    int digit2 = tab[val[1]] ?? 0;
    return (digit1*10 + digit2);
  }
}