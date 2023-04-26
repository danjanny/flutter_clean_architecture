import 'package:flutter_di/cleanarch/test/message_entity.dart';

abstract class IMessageDataSource {
  MessageEntity? getMessageEntity(String? id);
}
