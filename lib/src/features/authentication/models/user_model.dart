class UserModel {
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;
  final String passwordRepeat;

  UserModel({
    required this.fullName,
    required this.email,
    required this.phoneNo,
    required this.password,
    required this.passwordRepeat,
  });
}