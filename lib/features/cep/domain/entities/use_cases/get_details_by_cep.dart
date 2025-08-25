import 'package:cep_app/features/cep/domain/entities/cep_response.dart';
import 'package:cep_app/features/cep/domain/entities/get_details_by_cep_body.dart';
import 'package:cep_app/features/cep/domain/erros/cep_exception.dart';
import 'package:cep_app/features/cep/domain/repositories/cep_repository.dart';
import 'package:cep_app/shared/data/async/either.dart';

class GetDetailsByCep {
  final CepRepository _repository;

  GetDetailsByCep(this._repository);
  Future<Either<CepException, CepResponse>> call(GetDetailsByCepBody body) {
    return _repository.getDetailsByCep(body);
  }
}
