class SpaceAge {
  double age({String? planet, int? seconds}) {
    Map<String, double> planets = {
      'Earth': 31557600.0,
      'Mercury': 7600608.0,
      'Venus': 19414080.0,
      'Mars': 59355072.0,
      'Jupiter': 374371200.0,
      'Saturn': 929577600.0,
      'Uranus': 2651218560.0,
      'Neptune': 5200418592
    };
    
    double a = 0.0 + (seconds ?? 0);
    double b = planets[planet] ?? 0;
    double answer = a / b;
    answer = double.parse(answer.toStringAsFixed(2));
    return answer;
  }
}