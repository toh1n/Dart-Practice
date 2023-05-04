/*
Assignment : 1
Date : 14-04-2023
Take a list of phone numbers example
phoneNumber = [ +88, 01768131685, 01768171985, 01768111286, 01768131685]
And write program that prints out the full number like ‘+8801768171985’. 
You have to print out all numbers given in the list except +88.
*/

main() {
  List<String> phoneNumber = [
    "+88",
    '01768131685',
    "01768171985",
    "01768111286",
    "01766121685",
    "01763131685",
    "01768031689",
    "01700131685",
    "01703131585",
  ];
  for (int i = 1; i < phoneNumber.length; i++) {
    print(phoneNumber[0] + phoneNumber[i]);
  }
}
