main() {
  List<String> phoneNumber = [
    "+88",
    "01768131685",
    "01768171985",
    "01768111286",
    "01766121685",
    "01763131685",
    "01768031689",
    "01700131685",
    "01703131585",
  ];
  for (int i = 1; i < phoneNumber.length; i++) {
    print("'" + phoneNumber[0] + phoneNumber[i] + "'");
  }
}
