import 'package:flutter_di/cleanarch/data/data_sources/i_user_data_source.dart';
import 'package:flutter_di/cleanarch/data/data_sources/user_data_source.dart';
import 'package:flutter_di/cleanarch/data/repositories/user_login_repository.dart';
import 'package:flutter_di/cleanarch/domain/use_cases/user_interactor.dart';

import '../domain/repositories/user_repository.dart';
import '../domain/use_cases/user_use_case.dart';

class Injection {
  static UserUseCase provideUseCase() {
    var userRepository = provideRepository();
    return UserInteractor(userRepository);
  }

  static UserRepository provideRepository() {
    var userDataSource = Injection.provideDataSource();
    return UserLoginRepository(userDataSource);
  }

  static IUserDataSource provideDataSource() {
    return UserDataSource();
  }
}
