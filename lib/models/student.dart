class Student {
  String name;
  String id;
  String phoneNumber;
  String photoPath;
  String? about;
  String role;
  bool hidden;
  int score;
  int rank;

  Student(
      {required this.name,
      required this.id,
      required this.phoneNumber,
      required this.photoPath,
      required this.about,
      required this.role,
      required this.hidden,
      required this.score,
      required this.rank});
}
