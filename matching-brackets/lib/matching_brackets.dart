class MatchingBrackets {
  bool isPaired(String s) {
    List<String> answer = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '[' || s[i] == '{' || s[i] == '(') {
        answer.add(s[i]);
      } else {
        if (s[i] == ']') { if (answer.length > 0 && answer.last == '[') { answer.removeLast(); continue; } else { return false; } }
        if (s[i] == '}') { if (answer.length > 0 && answer.last == '{') { answer.removeLast(); continue; } else { return false; } }
        if (s[i] == ')') { if (answer.length > 0 && answer.last == '(') { answer.removeLast(); continue; } else { return false; } }
        continue;
      }
    }
    return answer.length == 0;
  }
}