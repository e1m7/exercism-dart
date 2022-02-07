enum Orientation { north, east, south, west }

class Position {
  int x, y;
  Position(this.x, this.y);

  @override
  bool operator ==(Object other) => other is Position && other.x == this.x && other.y == this.y;

  @override
  int get hashCode {
    final int prime = 31;
    int result = 1;
    result = prime * result + x;
    result = prime * result + y;
    return result;
  }

  @override
  String toString() => "[x: $x, y: $y]";
}

class Robot {
  var coord;
  var pos;

  Robot(this.coord, this.pos);
    
  void move(String s) {
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'R') {
        if (pos == Orientation.north) { pos = Orientation.east; continue; }
        if (pos == Orientation.east) { pos = Orientation.south; continue; }
        if (pos == Orientation.south) { pos = Orientation.west; continue; }
        if (pos == Orientation.west) { pos = Orientation.north; continue; }
      }
      if (s[i] == 'L') {
        if (pos == Orientation.north) { pos = Orientation.west; continue; }
        if (pos == Orientation.west) { pos = Orientation.south; continue; }
        if (pos == Orientation.south) { pos = Orientation.east; continue; }
        if (pos == Orientation.east) { pos = Orientation.north; continue; }
      }
      if (s[i] == 'A') {
        if (pos == Orientation.north) { coord.y = coord.y + 1; continue; }
        if (pos == Orientation.east) { coord.x = coord.x + 1; continue; }
        if (pos == Orientation.south) { coord.y = coord.y - 1; continue; }
        if (pos == Orientation.west) { coord.x = coord.x - 1; continue; }
      }
    }
  }
  
  @override
  String toString() => "[${coord} $pos]";
  
}