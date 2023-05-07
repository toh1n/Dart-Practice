main() {
  String studentName = " Mazharul Islam Tohin";

  // List<int> testScore = [-1,0,59,60,69,70,79,80,89,90,100,101];
  // for (int i = 0; i < testScore.length; i++) {
  //   String grade = studentGrade(studentName, testScore[i]);
  //   print("$studentName's grade : $grade");
  // }

  int testScore = 95;
  String grade = studentGrade(studentName, testScore);
  print("$studentName's grade : $grade");
}

String studentGrade(studentName, testScore) {
  String grade;

  if (testScore >= 0 && testScore <= 59) {
    grade = 'F';
  } else if (testScore >= 60 && testScore <= 69) {
    grade = 'D';
  } else if (testScore >= 70 && testScore <= 79) {
    grade = 'C';
  } else if (testScore >= 80 && testScore <= 89) {
    grade = 'B';
  } else if (testScore >= 90 && testScore <= 100) {
    grade = 'A';
  } else {
    grade = 'Invalid Grade';
  }

  return grade;
}
