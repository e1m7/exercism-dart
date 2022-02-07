class RnaTranscription {
  String toRna(String block) {
    String answer = '';
    Map<String,String> c = { 'G':'C', 'C':'G', 'T':'A', 'A':'U' };
    if (block == '') { return ''; }
    for (int i = 0; i < block.length; i++) {
      answer = answer + (c[block[i]] ?? '');
    }
    return answer;
  }
}