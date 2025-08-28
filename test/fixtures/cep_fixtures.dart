import 'package:cep_app/features/cep/domain/entities/cep_response.dart';
import 'package:cep_app/features/cep/domain/entities/get_cep_detail_by_local_body.dart';
import 'package:cep_app/features/cep/domain/entities/get_details_by_cep_body.dart';

const tCepObject = CepResponse(
  cep: '01041839012',
  logradouro: "logradouro",
  complemento: "complemento",
  bairro: "bairro",
  localidade: "localidade",
  uf: "uf",
);

const tGetDetailsByCepBodyRight = GetDetailsByCepBody(cep: '01041839012');

const tGetCepDetailsByLocalBodyRight = GetCepDetailByLocalBody(
    estado: 'SP', cidade: 'Sao Paulo', rua: 'AV paulista');
