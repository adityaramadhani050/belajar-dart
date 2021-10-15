class Music {
  final int age;
  final String gender;

  Music({required this.age, required this.gender});

  String musicRecommend() {
    if (age <= 25 && gender == "L") {
      return "HipHop";
    } else if (age > 25 && age <= 30 && gender == "L") {
      return "Jazz";
    } else if (age <= 25 && gender == "P") {
      return "Dance";
    } else if (age > 25 && age <= 30 && gender == "P") {
      return "Accoustic";
    } else {
      return "Classical";
    }
  }
}
