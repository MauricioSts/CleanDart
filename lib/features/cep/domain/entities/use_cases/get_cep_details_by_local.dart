import 'package:cep_app/features/cep/domain/entities/cep_response.dart';
import 'package:cep_app/features/cep/domain/entities/get_cep_detail_by_local_body.dart';

import 'package:cep_app/features/cep/domain/erros/cep_exception.dart';
import 'package:cep_app/features/cep/domain/repositories/cep_repository.dart';
import 'package:cep_app/shared/data/async/either.dart';

class GetCepDetailsByLocal {
  final CepRepository _cepRepository;

  GetCepDetailsByLocal(this._cepRepository);

  Future<Either<CepException, List<CepResponse>>> call(
    GetCepDetailByLocalBody body,
  ) {
    return _cepRepository.getCepDetailsByLocal(body);
  }
}
