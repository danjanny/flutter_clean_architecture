import 'package:equatable/equatable.dart';

class User extends Equatable {
  String? id;
  String? customerName;
  String? phoneNumber;
  String? email;

  User({this.id, this.customerName, this.phoneNumber, this.email});

  @override
  List<Object?> get props => [id, customerName, phoneNumber, email];
}
