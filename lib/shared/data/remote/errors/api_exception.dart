import 'package:cep_app/shared/data/models/api_base_model.dart';

enum ErrorStatus{
  unauthorized,
  noConnection,
  badRequest,
  internalServerError,
  unknown,
}

final class ApiException extends ApiBaseModel implements Exception{
  final String identifier;
  final ErrorStatus errorStatus;
  ApiException({
    required this.identifier,
    super.message,
    required super.statusCode,
    required this.errorStatus
  });

}

//aqui é a parte que deu errado da api, e os erros que ela vai rettornar