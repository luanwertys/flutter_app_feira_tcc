import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:tcc/src/pages/auth/controller/auth_controller.dart';
import 'package:tcc/src/pages/common_widgets/custom_text_field.dart';
import 'package:tcc/src/services/validators.dart';
=======
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:get/get.dart';
import '../../../../services/validators.dart';
import '../../../commom_widgets/custom_text_field.dart';
import '../../controller/auth_controller.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class ForgotPasswordDialog extends StatelessWidget {
  final emailController = TextEditingController();

  ForgotPasswordDialog({
    required String email,
    Key? key,
  }) : super(key: key) {
    emailController.text = email;
  }

  final _formFieldKey = GlobalKey<FormFieldState>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Conteúdo
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Titulo
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Recuperação de senha',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),

                // Descrição
                const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    'Digite seu email para recuperar sua senha',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                ),

                // Campo de email
                CustomTextField(
                  formFieldKey: _formFieldKey,
                  controller: emailController,
                  icon: Icons.email,
                  label: 'Email',
                  validator: emailValidator,
                ),

                // Confirmar
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
<<<<<<< HEAD
                    side: const BorderSide(
                      width: 2,
                      color: Colors.green,
=======
                    side: BorderSide(
                      width: 2,
                      color: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                    ),
                  ),
                  onPressed: () {
                    if (_formFieldKey.currentState!.validate()) {
                      authController.resetPassword(emailController.text);
                      Get.back(result: true);
                    }
                  },
                  child: const Text(
                    'Recuperar',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Botão para fechar
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
