import 'package:cep_app/shared/data/remote/api_service.dart';
import 'package:cep_app/shared/data/remote/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider<ApiService>(
  (ref) => DioService(
    Dio(BaseOptions(
      baseUrl: 'https://viacep.com.br/ws/',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    )),
  ),
);
//nesse codigo serve para gerar uma futura instancia da api, caso alguem precisar de apiservice aqui esta a forma de criar e gerenciar essa instancia