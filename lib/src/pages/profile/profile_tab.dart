import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:tcc/src/pages/auth/controller/auth_controller.dart';
import 'package:tcc/src/pages/common_widgets/custom_text_field.dart';
import 'package:tcc/src/services/validators.dart';
=======
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/services/validators.dart';
import 'package:get/get.dart';

import '../auth/controller/auth_controller.dart';
import '../commom_widgets/custom_text_field.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
=======
        backgroundColor: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
        title: const Text('Perfil do usuário'),
        actions: [
          IconButton(
            onPressed: () {
              authController.signOut();
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          // Email
          CustomTextField(
            readOnly: true,
            initialValue: authController.user.email,
            icon: Icons.email,
            label: 'Email',
          ),

          // Nome
          CustomTextField(
            readOnly: true,
            initialValue: authController.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),

          // Celular
          CustomTextField(
            readOnly: true,
            initialValue: authController.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),

          // CPF
          CustomTextField(
            readOnly: true,
            initialValue: authController.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          // Botão para atualizar a senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
<<<<<<< HEAD
                side: const BorderSide(
                  color: Colors.green,
=======
                side: BorderSide(
                  color: CustomColors.customContrastColor3,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text('Atualizar senha'),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    final currentPasswordController = TextEditingController();
    final newPasswordController = TextEditingController();
<<<<<<< HEAD
    final _formKey = GlobalKey<FormState>();
=======
    final formKey = GlobalKey<FormState>();
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
<<<<<<< HEAD
                  key: _formKey,
=======
                  key: formKey,
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Titulo
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Atualização de senha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // Senha atual
                      CustomTextField(
                        controller: currentPasswordController,
                        isSecret: true,
                        icon: Icons.lock,
                        label: 'Senha atual',
                        validator: passwordValidator,
                      ),

                      // Nova senha
                      CustomTextField(
                        controller: newPasswordController,
                        isSecret: true,
                        icon: Icons.lock_outline,
                        label: 'Nova senha',
                        validator: passwordValidator,
                      ),

                      // Confirmação nova senha
                      CustomTextField(
                        isSecret: true,
                        icon: Icons.lock_outline,
                        label: 'Confirmar nova senha',
                        validator: (password) {
                          final result = passwordValidator(password);

                          if (result != null) {
                            return result;
                          }

                          if (password != newPasswordController.text) {
                            return 'As senhas não são equivalentes';
                          }

                          return null;
                        },
                      ),

                      // Botão de confirmação
                      SizedBox(
                        height: 45,
                        child: Obx(() => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: authController.isLoading.value
                                  ? null
                                  : () {
<<<<<<< HEAD
                                      if (_formKey.currentState!.validate()) {
=======
                                      if (formKey.currentState!.validate()) {
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                                        authController.changePassword(
                                          currentPassword:
                                              currentPasswordController.text,
                                          newPassword:
                                              newPasswordController.text,
                                        );
                                      }
                                    },
                              child: authController.isLoading.value
                                  ? const CircularProgressIndicator()
                                  : const Text('Atualizar'),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
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
      },
    );
  }
}
