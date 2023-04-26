import 'package:flutter_di/cleanarch/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required String id, required String customerName})
      : super(id: id, customerName: customerName);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(id: json['id'], customerName: json['customerName']);
  }

  Map<String, String> toJson() {
    return {'id': id!, 'customerName': customerName!};
  }
}
