import 'package:flutter_di/cleanarch/data/data_sources/i_user_data_source.dart';
import 'package:flutter_di/cleanarch/domain/entities/user.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IUserDataSource)
class UserDataSource extends IUserDataSource {
  UserDataSource();

  @override
  User getMessageFromSource(String id) =>
      User(id: id, customerName: 'Ridha Danjanny');
}
