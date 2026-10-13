String getGradeMessage(int score) {
  if (score >= 90 && score <= 100) {
    return "Excellent!";
  } else if (score >= 75 && score < 90) {
    return "Passed!";
  } else if (score >= 0 && score < 75) {
    return "Failed. Keep practicing!";
  } else {
    return "Invalid score!";
  }
}

void main() {
  List<String> scores = ["95", "82", "68", "abc", "105"];

  print("=== STUDENT GRADE CHECKER ===");

  for (int i = 0; i < scores.length; i++) {
    try {
      int score = int.parse(scores[i]);

      if (score < 0 || score > 100) {
        print("Score ${scores[i]}: Invalid score!");
      } else {
        String result = getGradeMessage(score);
        print("Score $score: $result");
      }
    } catch (e) {
      print("Score ${scores[i]}: Error! Please enter a valid number.");
    }
  }

  print("Program completed successfully.");
}
