import 'package:flutter_di/cleanarch/domain/entities/user.dart';
import 'package:flutter_di/cleanarch/domain/repositories/user_repository.dart';
import 'package:flutter_di/cleanarch/domain/use_cases/user_use_case.dart';

class UserInteractor implements UserUseCase {
  UserRepository? userRepository;

  UserInteractor(this.userRepository);

  @override
  User? getUser(String? id) {
    return userRepository?.getUser(id!);
  }
}
