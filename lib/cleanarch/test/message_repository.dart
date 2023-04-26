import 'package:flutter_di/cleanarch/test/i_message_data_source.dart';
import 'package:flutter_di/cleanarch/test/i_message_repository.dart';
import 'package:flutter_di/cleanarch/test/message_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IMessageRepository)
class MessageRepository extends IMessageRepository {
  IMessageDataSource? messageDataSource;

  MessageRepository(this.messageDataSource);

  @override
  MessageEntity? getMessageEntity(String id) {
    return messageDataSource?.getMessageEntity(id);
  }
}
