import 'package:flutter_di/cleanarch/test/i_message_data_source.dart';
import 'package:flutter_di/cleanarch/test/message_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IMessageDataSource)
class MessageDataSource extends IMessageDataSource {
  MessageDataSource();

  @override
  MessageEntity? getMessageEntity(String? id) => MessageEntity(id: id, customerName: 'Ridha Danjanny');
}