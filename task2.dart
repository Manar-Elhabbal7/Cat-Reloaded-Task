

void solve() {
  List<Map<String, dynamic>> students = [
    {"name": "Sara", "score": 91},
    {"name": "Ali", "score": 75},
    {"name": "Mona", "score": 88},
    {"name": "Ali", "score": 82},
    {"name": "Fadi", "score": 95},
    {"name": "May", "score": 78},
    {"name": "John", "score": 92},
    {"name": "Lara", "score": 89},
    {"name": "Sara", "score": 58},
  ];

  Map<String, int> HighestScores = {};
  
  for (var st in students) {
    String stName = st["name"];
    int stScore = st["score"];
    
    if (!HighestScores.containsKey(stName) ||
        stScore > HighestScores[stName]!) {
      HighestScores[stName] = stScore;
    }
  }
   
  
  var sorted = HighestScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  
  HighestScores = Map.fromEntries(sorted);
  print(HighestScores);
}

void main() {
  solve();
}
