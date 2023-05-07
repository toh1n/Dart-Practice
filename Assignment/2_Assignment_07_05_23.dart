
/*
Name : Mazharul Islam Tohin
Assignment : 2
Date : 07-05-2023
Problem: Student Grading System
You are building a student grading system. Each student has a name and a test score.
Your task is to write a Dart function called studentGrade that takes in the student's name and test score,
and returns their corresponding grade based on the following grading scale:

A: 90 - 100
B: 80 - 89
C: 70 - 79
D: 60 - 69
F: 0 - 59

The function should validate the test score and ensure it is within the valid range of 0 to 100. 
If the score is valid, it should return the grade. If the score is invalid, it should return "Invalid Grade".
Here's an example usage of the studentGrade function:
void main() {
  String studentName = "Saiaf Anan";  /// student name must be yours
  int testScore = 85;
  String grade = studentGrade(studentName, testScore);
  print("$studentName's grade: $grade");
}
In this example, the studentGrade function should check the test score of your full name and assign the corresponding grade based on the grading scale. 
Since you scored 85, it falls within the range of 80-89, so the function should return "B".
*/


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
