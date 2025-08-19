import 'package:cep_app/shared/data/async/either.dart';
import 'package:cep_app/shared/ui/theme/errors/theme_local_exception.dart';

abstract interface class ThemeRepository {
  Future<Either<ThemeLocalException, bool>> getIsLightTheme();

  Future<Either<ThemeLocalException, void>> setIsLightTheme(
      bool getIsLightTheme);
}

//NOTA: em domain/repositories, sempre ficam as abstrações, basicamente os contratos para serem implementados no futuro.
//NOTA: em data a gente faz a implementação do contrato existente no domain