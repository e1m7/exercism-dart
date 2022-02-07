import 'dart:math';

class SecretHandshake {
  List<String> commands(int number) {
    
    Map<int, String> secret = { 
      1: 'wink', 
      10: 'double blink', 
      100: 'close your eyes', 
      1000: 'jump'
      };
    
    List<String> answer = [];
    String bin = '';
    
    // if number = 0 or 10000 then answer = []
    if (number == 0 || number == 16) { return answer; }
    
    // bin = number to string in binary system
    while (number > 0) {
      bin = bin + (number % 2).toString();
      number = number ~/ 2;
    }
    bin = bin.split('').reversed.join();
    
    // simple variant 1,10,100,1000
    if (secret[int.parse(bin)] != null ) { 
      answer.add(secret[int.parse(bin)] ?? '');
      return answer; 
    }
    
    // others variants
    for (int i = bin.length-1; i >= 0; i--) {
      if (bin[i] == '1') {
        var st = pow(10, bin.length - i - 1);
        if (secret[st] != null) {
          if (bin.length < 5) {
            answer.add(secret[st] ?? '');               // add to end
          } else {
            answer.insert(0, secret[st] ?? '');         // add to first
          }
        }
      }
    }
    return answer;
  }
}