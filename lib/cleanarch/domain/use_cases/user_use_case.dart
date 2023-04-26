import 'package:flutter_di/cleanarch/domain/entities/user.dart';

abstract class UserUseCase {
  User? getUser(String? id);
}