import 'package:get/get.dart';

String? emailValidator(String? email) {
  if (email == null || email.isEmpty) {
    return 'Digite seu email!';
  }

  if (!email.isEmail) return 'Digite um email válido!';

  return null;
}

String? passwordValidator(password) {
  if (password == null || password.isEmpty) {
    return 'Digite sua senha!';
  }

<<<<<<< HEAD
  if (password.length < 6) {
    return 'Digite uma senha com pelos menos 6 caracteres.';
=======
  if (password.length < 7) {
    return 'Digite uma senha com pelos menos 7 caracteres.';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
  }

  return null;
}

String? nameValidator(String? name) {
  if (name == null || name.isEmpty) {
    return 'Digite um nome!';
  }

  final names = name.split(' ');

  if (names.length == 1) return 'Digite seu nome completo!';

  return null;
}

String? phoneValidator(String? phone) {
  if (phone == null || phone.isEmpty) {
    return 'Digite um celular!';
  }

<<<<<<< HEAD
  if (phone.length < 14 || !phone.isPhoneNumber) {
=======
  if (phone.length < 11 || !phone.isPhoneNumber) {
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
    return 'Digite um número válido!';
  }

  return null;
}

String? cpfvalidator(String? cpf) {
  if (cpf == null || cpf.isEmpty) {
    return 'Digite um CPF!';
  }

  if (!cpf.isCpf) return 'Digite um CPF válido!';

  return null;
}
