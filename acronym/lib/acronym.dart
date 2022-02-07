class Acronym {
  String abbreviate(String s) {
    String answer = '';
    s = s.replaceAll('-',' ');        // - => space
    s = s.replaceAll('_',' ');        // _ => space
    s = s.replaceAll('   ',' ');      // 3space => space
    s = s.replaceAll('  ',' ');       // 2space => space 
    List<String> a = s.split(" ");
    for (String i in a) { answer = answer + i[0].toUpperCase(); }
    return answer;
  }
}