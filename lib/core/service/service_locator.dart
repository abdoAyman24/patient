
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpGetIt() {
  getIt.registerSingleton<Dio>(Dio());
  
}
