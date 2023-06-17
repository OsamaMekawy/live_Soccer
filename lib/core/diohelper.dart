import 'package:dio/dio.dart';

class DioHelper{

  static late Dio dio ;

  static init(){
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://v3.football.api-sports.io/',
          receiveDataWhenStatusError: true,
          // headers: {
          //  // 'Content-Type':'application/json',
          //   'apiKey':'2a1edea81bd47e94b86076d948bc6220'
          //
          // }
        )
    );
  }

  static Future<Response> getData(
      {
        required String url,

        Map<String, dynamic>? query,


      }
      ) async {

    dio.options.headers={
      'Content-Type':'application/json',
      'x-apisports-key':'2a1edea81bd47e94b86076d948bc6220'
    };
    return await dio.get(url, queryParameters: query);
  }


}

