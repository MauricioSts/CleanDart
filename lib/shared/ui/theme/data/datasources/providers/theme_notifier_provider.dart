import 'package:cep_app/shared/ui/theme/data/datasources/providers/theme_notifier.dart';
import 'package:cep_app/shared/ui/theme/data/datasources/providers/theme_state.dart';
import 'package:cep_app/shared/ui/theme/domain/repositories/theme_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ThemeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref){
  return ThemeNotifier(ThemeRepositoryImpl)
});

