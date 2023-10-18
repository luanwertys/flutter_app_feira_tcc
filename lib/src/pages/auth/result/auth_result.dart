<<<<<<< HEAD
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tcc/src/models/user_model.dart';
=======
import 'package:flutter_app_cat_happy/src/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

part 'auth_result.freezed.dart';

@freezed
class AuthResult with _$AuthResult {
  factory AuthResult.success(UserModel user) = Success;
  factory AuthResult.error(String message) = Error;
}
