import 'package:equatable/equatable.dart';

class GetDetailsByCepBody extends Equatable {
  final String cep;

  const GetDetailsByCepBody({required this.cep});

  @override
  List<Object?> get props => [cep];
}
