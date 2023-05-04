main() {
  //It shows unique value even
  //if same value multiple time available it will print only once
  Set<String> students = {'Tohin', 'Sunny', 'Tanjid', 'sunny', 'tanjid'};
  students.add('Danbir');
  students.clear();
  print(students);
}
