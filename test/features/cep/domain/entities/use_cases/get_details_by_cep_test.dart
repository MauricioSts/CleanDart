import 'package:cep_app/features/cep/domain/entities/use_cases/get_details_by_cep.dart';
import 'package:cep_app/features/cep/domain/erros/cep_exception.dart';
import 'package:cep_app/features/cep/domain/repositories/cep_repository.dart';
import 'package:cep_app/shared/const/const_strings.dart';
import 'package:cep_app/shared/data/async/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures/cep_fixtures.dart';
import '../../../../../fixtures/mock_cep_repository.dart';

void main() {
  late CepRepository cepRepository;
  late GetDetailsByCep getDetailsByCep;

  setUp(() {
    cepRepository = MockCepRepository();
    getDetailsByCep = GetDetailsByCep(cepRepository);

    registerFallbackValue(tGetDetailsByCepBodyRight);
  });

  group(
    'should get cep details by cep',
    () async {
      test(
        'success',
        () async {
          when(() => cepRepository.getDetailsByCep(any()))
              .thenAnswer(((_) async => Right(tCepObject)));

          final cepResponse = await getDetailsByCep(tGetDetailsByCepBodyRight);
          expect(cepResponse, isA<Right>());
        },
      );

      test(
        "fail",
        () async {
          when(() => cepRepository.getDetailsByCep(any())).thenAnswer(
            (_) async => Left(
              CepException(message: ConstStrings.kDefaultErrorMessage),
            ),
          );
        },
      );

      final cepResponseEither =
          await getDetailsByCep(tGetDetailsByCepBodyRight);

      expect(cepResponseEither, isA<Left>());

      expect(((cepResponseEither as Left).value as CepException).message,
          ConstStrings.kDefaultErrorMessage);
    },
  );
}
