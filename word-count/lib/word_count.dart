class WordCount {
  Map<String, int> countWords(String st) {
    String a = "0123456789abcdefghijklmnopqrstuvwxyz'";
    Map<String, int> result = {};                        // result = для ответа 
    st = st.toLowerCase();                               // перевод в малые буквы
    st = st.replaceAll("\\",' ');                        // выкинуть \
    st = st.replaceAll("\n",'');                         // выкинуть \n 
    st = st + " ";                                       // добавить на конец пробел 
    String temp = "";                                    // temp = для текущего слова
    
    for (int i = 0; i < st.length; i++) {                // пройти во всем
      String t = st[i];                                  // взять символ
      if (a.indexOf(t) > 0) {                            // если он в алфавите, то...
        temp = temp + t;                                 // ...добавить в temp
      } else {                                           // если он не в алфавите, то...
        if (temp != "") {                                // если внутри temp что-то есть (было слово)
          if ((result[temp] ?? 0) != 0) {                // если такое слово уже есть в result
            result[temp] = (result[temp] ?? 0) + 1;      // добавить туда 1  
          } else {                                       // если такого слова нет в result
            result[temp] = 1;                            // положить туда 1
          }
          temp = "";                                     // очистить temp
        }
      };
    }
    return result;
  }
}