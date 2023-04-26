import 'package:flutter_di/cleanarch/domain/entities/user.dart';

abstract class IUserDataSource {
  User getMessageFromSource(String id);
}