import 'package:clothes_shop_app/features/authentication/domain/entities/user_entity.dart';

class UserModel  {
  @override
  final String email;
  final String passWord;
  final String confirmPassword;
  final String name;
  final String phone;
  final String location;
  final bool isMale;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json['email'],
        name: json['name'],
        confirmPassword: json['confirmPassword'],
        passWord: json['passWord'],
        phone: json['phone'],
        location: json['location'],
        isMale: json['isMale'],
      );

  toMap() => {
        'email': email,
        'name': name,
        'confirmPassword': confirmPassword,
        'passWord': passWord,
        'phone': phone,
        'location': location,
        'isMale': isMale,
      };

  factory UserModel.fromEntity(UserEntity user) =>

      UserModel(
          email: user.email,
          passWord: user.passWord,
          confirmPassword: user.confirmPassword,
          name: user.name,
          phone: user.phone,
          location: user.location,
          isMale: user.isMale);

  UserModel({required this.email, required this.passWord, required this.confirmPassword, required this.name, required this.phone, required this.location, required this.isMale});



}
