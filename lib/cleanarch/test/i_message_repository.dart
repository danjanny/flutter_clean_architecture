import 'package:flutter_di/cleanarch/test/message_entity.dart';

abstract class IMessageRepository {
  MessageEntity? getMessageEntity(String id);
}
