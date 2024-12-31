class UserEntity {
  final String email;
  final String passWord;
  final String confirmPassword;
  final String name;
  final String phone;
  final String location;
  final bool isMale;

  UserEntity(
      {required this.passWord,
      required this.confirmPassword,
      required this.phone,
      required this.location,
      required this.isMale,
      required this.email,
      required this.name});
}
