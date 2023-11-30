import 'package:dio/dio.dart';

class ApiService{
  static const baseUrl= 'https://rickandmortyapi.com/api/';
  static const characters= 'character';
  static const locations= 'locations';
  static const episodes= 'episodes';

  static final Dio _dio = Dio(
    BaseOptions(
        headers:  {'Content-Type':'application/json'},
        receiveDataWhenStatusError: true
    ),
  );
  static Future<Map<String,dynamic>> getData({String? endPoint=''})async{
    Response res = await _dio.get(baseUrl+endPoint!);
    return res.data;
  }
}