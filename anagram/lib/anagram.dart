// Отсортировать строку по алфавиту
String formatAnagram(String s) {
  List<String> temp = [];
  for (int i = 0; i < s.length; i++) { temp.add(s[i]); }
  temp.sort();
  return temp.join();
}

class Anagram {
  List<String> findAnagrams(String s1, List<String> s2) {
    List<String> answer = [];
    String temp = formatAnagram(s1.toLowerCase());
    for (int i = 0; i < s2.length; i++) {
      if (temp == formatAnagram(s2[i].toLowerCase()) && 
          s1.toLowerCase() != s2[i].toLowerCase()) { 
        answer.add(s2[i]); 
      }
    }
    return answer;
  }
}