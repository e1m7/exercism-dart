class BinarySearchTree {
  String data = '';
  dynamic left = '';
  dynamic right = '';
  static List<String> answer = [];
  
  BinarySearchTree(String _data) {
    this.data = _data;
  }
  
  void insert(String _new) {
    if (int.parse(_new) < int.parse(this.data)) {
      if (this.left == '') { this.left = BinarySearchTree(_new); } else { this.left.insert(_new); }
    } else if (int.parse(_new) > int.parse(this.data)) {
      if (this.right == '') { this.right = BinarySearchTree(_new); } else { this.right.insert(_new); }
    } else {
      this.data = _new;
    }
  }
  
  List<String> sortedData() {
    if (this.left != '') { this.left.sortedData(); } 
    answer.add(this.data);
    if (this.right != '') { this.right.sortedData(); }
    return answer;
  }

  @override
  String toString() => "\nTree data:${this.data} l:${this.left} r:${this.right}";
}