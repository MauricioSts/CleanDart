import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/data/models/api_response_model.dart';
import 'package:cep_app/shared/data/remote/errors/api_exception.dart';

abstract interface class ApiService{
  Future<Either<ApiException, ApiResponseModel>> get(String endPoint, {Map<String, dynamic>? queryParams});
}


//implementação do either 
//string endpoint (endpoint parcial)
//{Map<String, dynamic>? queryParams}); == parametros opcionais