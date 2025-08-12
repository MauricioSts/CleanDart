base class ApiBaseModel{
  final int statusCode;
  final String? message;

  const ApiBaseModel({
    this.message,
    required this.statusCode,
  });
}

//api onde esta sendo requerido a messagem (podendo ser nula) e o principal que é o status code