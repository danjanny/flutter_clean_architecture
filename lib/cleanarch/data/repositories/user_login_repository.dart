import 'package:flutter_di/cleanarch/data/data_sources/i_user_data_source.dart';
import 'package:flutter_di/cleanarch/domain/entities/user.dart';
import 'package:flutter_di/cleanarch/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserLoginRepository extends UserRepository {
  IUserDataSource? dataSource;

  UserLoginRepository(this.dataSource);

  @override
  User? getUser(String id) {
    return dataSource?.getMessageFromSource(id);
  }
}
