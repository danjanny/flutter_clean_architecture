// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_di/cleanarch/data/data_sources/i_user_data_source.dart'
    as _i7;
import 'package:flutter_di/cleanarch/data/data_sources/user_data_source.dart'
    as _i8;
import 'package:flutter_di/cleanarch/data/repositories/user_login_repository.dart'
    as _i10;
import 'package:flutter_di/cleanarch/domain/repositories/user_repository.dart'
    as _i9;
import 'package:flutter_di/cleanarch/test/i_message_data_source.dart' as _i3;
import 'package:flutter_di/cleanarch/test/i_message_repository.dart' as _i5;
import 'package:flutter_di/cleanarch/test/message_data_source.dart' as _i4;
import 'package:flutter_di/cleanarch/test/message_repository.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IMessageDataSource>(() => _i4.MessageDataSource());
    gh.factory<_i5.IMessageRepository>(
        () => _i6.MessageRepository(gh<_i3.IMessageDataSource>()));
    gh.factory<_i7.IUserDataSource>(() => _i8.UserDataSource());
    gh.factory<_i9.UserRepository>(
        () => _i10.UserLoginRepository(gh<_i7.IUserDataSource>()));
    return this;
  }
}
