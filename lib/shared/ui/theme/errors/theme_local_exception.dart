import 'package:cep_app/shared/errors/base_exception.dart';
import 'package:flutter/material.dart';

final class ThemeLocalException extends BaseException{
  ThemeLocalException({String? message}) : super(message: message);
}