import 'dart:developer';

import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/local/local_service/errors/local_exception.dart';
import 'package:cep_app/shared/data/local/local_service/local_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class SharedPreferencesService implements LocalService {
  @override
  Future<Either<LocalException, T?>> get<T>(String key) async {
    try {
      final instance = await SharedPreferences.getInstance();

      if (T == String) {
        return Right(instance.getString(key) as T?);
      } else if (T == bool) {
        return Right(instance.getBool(key) as T?);
      }
      return Right(null);
    } catch (error, st) {
      log('error loading local string or bool', error: error, stackTrace: st);
      return Left(
        const LocalException(
          message: 'error loading cache. please try again later',
        ),
      );
    }
  }

  //esse trecho de codigo acima é a implementação concreta do LocalService no quesito de puxar os dados do localservice que foram salvos pelo set abaixo




  @override
  Future<Either<LocalException, void>> set<T>(String key, T data) async {
    try {
      final instance = await SharedPreferences.getInstance();
      if (T == String) {
        await instance.setString(key, data as String);
      } else if (T == bool) {
        await instance.setBool(key, data as bool);
      }

      return Right(null);
    } catch (error, st) {
      log(
        'error setting local string or bool ',
        error: error,
        stackTrace: st,
      );
    }
    ;
    return Left(
      const LocalException(
        message: "error setting cache. please try again later",
      ),
    );
  }
}
//esse trecho de codigo salva os dados localmente 