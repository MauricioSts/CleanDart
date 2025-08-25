import 'package:cep_app/features/cep/domain/entities/cep_response.dart';
import 'package:cep_app/features/cep/domain/entities/get_details_by_cep_body.dart';
import 'package:cep_app/features/cep/domain/entities/use_cases/get_details_by_cep.dart';
import 'package:cep_app/features/cep/domain/erros/cep_exception.dart';
import 'package:cep_app/shared/data/async/either.dart';

abstract interface class CepRepository {
  Future<Either<CepException, CepResponse>> getDetailsByCep(
      GetDetailsByCepBody body);
}
