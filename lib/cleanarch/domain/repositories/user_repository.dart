import 'package:flutter_di/cleanarch/domain/entities/user.dart';

abstract class UserRepository {
  User? getUser(String id);
}
