import '../../domain/entities/profile_entity.dart';

class ProfileModel {
  ProfileModel({
    this.name,
    this.email,
    this.phone,
    this.location,
    this.gender,
  });

  ProfileModel.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    location = json['location'];
    gender = json['gender'];
  }

  String? name;
  String? email;
  String? phone;
  String? location;
  num? gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['location'] = location;
    map['gender'] = gender;
    return map;
  }

  ProfileEntity toEntity() => ProfileEntity(
        name: name!,
        email: email!,
        phone: phone!,
        location: location!,
        gender: gender!,
      );
}
