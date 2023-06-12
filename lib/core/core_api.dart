import 'package:dio/dio.dart';


/// This class configure Base Url for API
abstract class DioApi{

  static const String _baseurl = 'https://run.mocky.io/v3/';

  DioApi(){
    dio = Dio(BaseOptions(baseUrl: _baseurl));
  }

  late final Dio dio;
}