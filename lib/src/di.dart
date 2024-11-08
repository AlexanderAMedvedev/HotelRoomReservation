import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final sl = GetIt.instance;

@InjectableInit()
void configureDependencies() => sl.init();

@module
abstract class AppModule {
  @lazySingleton
  Dio get dio => Dio();

  @Named('baseUrl')
  String get baseUrl => 'http://node1.flyer-b2b.ru:5001/api/';
}
