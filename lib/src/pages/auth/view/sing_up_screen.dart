import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/pages/auth/controller/auth_controller.dart';
import 'package:flutter_app_cat_happy/src/pages/commom_widgets/custom_text_field.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../services/validators.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({Key? key}) : super(key: key);

  final cpfFormartter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
  );
  final phoneFormatter = MaskTextInputFormatter(
    mask: '## #####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  final _formKey = GlobalKey<FormState>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Cadastro',
                          style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Muslish',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 600,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          //email
                          CustomTextField(
                            icon: Icons.email,
                            label: 'E-mail',
                            onSaved: (value) {
                              authController.user.email = value;
                            },
                            validator: emailValidator,
                            textInputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),

                          //senha
                          CustomTextField(
                            icon: Icons.lock,
                            label: 'Senha',
                            onSaved: (value) {
                              authController.user.password = value;
                            },
                            isSecret: true,
                            validator: passwordValidator,
                            textInputAction: TextInputAction.next,
                          ),

                          //Nome
                          CustomTextField(
                            icon: Icons.person,
                            label: 'Nome',
                            onSaved: (value) {
                              authController.user.name = value;
                            },
                            validator: nameValidator,
                            textInputType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                          ),

                          //Telefone
                          CustomTextField(
                            icon: Icons.phone,
                            label: 'Celular',
                            onSaved: (value) {
                              authController.user.phone = value;
                            },
                            inputFormatters: [phoneFormatter],
                            validator: phoneValidator,
                            textInputType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                          ),

                          //CPF
                          CustomTextField(
                            icon: Icons.file_copy,
                            label: 'CPF',
                            onSaved: (value) {
                              authController.user.cpf = value;
                            },
                            inputFormatters: [cpfFormartter],
                            validator: cpfvalidator,
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                          ),
                          SizedBox(
                            height: 50,
                            child: Obx(() {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                                onPressed: authController.isLoading.value
                                    ? null
                                    : () {
                                        FocusScope.of(context).unfocus();
                                        if (_formKey.currentState!.validate()) {
                                          _formKey.currentState!.save();

                                          authController.signUp();
                                        }
                                      },
                                child: authController.isLoading.value
                                    ? const CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : Text(
                                        'Cadastrar usuário',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color:
                                              CustomColors.customContrastColor4,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
