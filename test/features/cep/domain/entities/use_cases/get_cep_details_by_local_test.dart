
import 'package:cep_app/features/cep/domain/entities/use_cases/get_cep_details_by_local.dart';
import 'package:cep_app/features/cep/domain/erros/cep_exception.dart';
import 'package:cep_app/features/cep/domain/repositories/cep_repository.dart';
import 'package:cep_app/shared/const/const_strings.dart';
import 'package:cep_app/shared/data/async/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../fixtures/cep_fixtures.dart';
import '../../../../../fixtures/mock_cep_repository.dart';

void main() {
  late CepRepository mockCepRepository;

  late GetCepDetailsByLocal getCepDetailsByLocal;

  setUp(() {
    mockCepRepository = MockCepRepository();
    getCepDetailsByLocal = GetCepDetailsByLocal(mockCepRepository);

    registerFallbackValue(tGetCepDetailsByLocalBodyRight);
  });

  group('Should get cep details by local details', () {
    test('success', () async {
      when(() => mockCepRepository.getCepDetailsByLocal(any()))
          .thenAnswer((_) async => Right([tCepObject]));

      final listOfCepResponse =
          await getCepDetailsByLocal(tGetCepDetailsByLocalBodyRight);

      expect(listOfCepResponse, isA<Right>());
    });

    test('fail', () async {
      when(() => mockCepRepository.getCepDetailsByLocal(any())).thenAnswer(
        (_) async => Left(
          CepException(message: ConstStrings.kDefaultErrorMessage),
        ),
      );
      final listOfCepResponse = await getCepDetailsByLocal (tGetCepDetailsByLocalBodyRight);

      expect(listOfCepResponse, isA<Left>());

      expect((((listOfCepResponse as Left).value) as CepException).message, ConstStrings.kDefaultErrorMessage);
    });
  });
}
