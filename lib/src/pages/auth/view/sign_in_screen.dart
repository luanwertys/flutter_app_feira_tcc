import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:tcc/src/config/custom_colors.dart';
import 'package:tcc/src/pages/auth/controller/auth_controller.dart';
import 'package:tcc/src/pages/auth/view/components/forgot_password_dialog.dart';
import 'package:tcc/src/pages/common_widgets/app_name_widget.dart';
import 'package:tcc/src/pages/common_widgets/custom_text_field.dart';
import 'package:tcc/src/pages_routes/app_pages.dart';
import 'package:tcc/src/services/utils_services.dart';
import 'package:tcc/src/services/validators.dart';
=======
import 'package:flutter_app_cat_happy/src/pages/auth/controller/auth_controller.dart';
import 'package:flutter_app_cat_happy/src/pages/commom_widgets/custom_text_field.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:flutter_app_cat_happy/src/pages/commom_widgets/custom_text_rich.dart';
import 'package:flutter_app_cat_happy/src/services/utils_services.dart';
import 'package:get/get.dart';

import '../../../pages_routes/app_pages.dart';
import '../../../services/validators.dart';
import 'components/forgot_password_dialog.dart';
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

<<<<<<< HEAD
  // Controlador de campos
=======
  //Controller de campos
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
<<<<<<< HEAD
=======
    // var scrrenHeight = (size.height) - MediaQuery.of(context).padding.top;
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
<<<<<<< HEAD
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Nome do app
                    const AppNameWidget(
                      greenTitleColor: Colors.white,
                      textSize: 40,
                    ),

                    // Categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                            FadeAnimatedText('Frutas'),
                            FadeAnimatedText('Verduras'),
                            FadeAnimatedText('Legumes'),
                            FadeAnimatedText('Carnes'),
                            FadeAnimatedText('Cereais'),
                            FadeAnimatedText('Laticíneos'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Formulário
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Email
                      CustomTextField(
                        controller: emailController,
                        icon: Icons.email,
                        label: 'Email',
                        validator: emailValidator,
                      ),

                      // Senha
                      CustomTextField(
                        controller: passwordController,
                        icon: Icons.lock,
                        label: 'Senha',
                        isSecret: true,
                        validator: passwordValidator,
                      ),

                      // Botão de entrar
                      SizedBox(
                        height: 50,
                        child: GetX<AuthController>(
                          builder: (authController) {
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
                                        String email = emailController.text;
                                        String password =
                                            passwordController.text;

                                        authController.signIn(
                                            email: email, password: password);
                                      }
                                    },
                              child: authController.isLoading.value
                                  ? const CircularProgressIndicator()
                                  : const Text(
                                      'Entrar',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                            );
                          },
                        ),
                      ),

                      // Esqueceu a senha
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () async {
                            final bool? result = await showDialog(
                              context: context,
                              builder: (_) {
                                return ForgotPasswordDialog(
                                  email: emailController.text,
                                );
                              },
                            );

                            if (result ?? false) {
                              utilsServices.showToast(
                                message:
                                    'Um link de recuperação foi enviado para seu email.',
                              );
                            }
                          },
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ),
                          ),
                        ),
                      ),

                      // Divisor
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Ou'),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Botão de novo usuário
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            side: const BorderSide(
                              width: 2,
                              color: Colors.green,
                            ),
                          ),
                          onPressed: () {
                            Get.toNamed(PagesRoutes.signUpRoute);
                          },
                          child: const Text(
                            'Criar conta',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
=======
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Nome da aplicação
                        const FittedBox(
                          child: CustomTextRich(
                            fontsize: 30,
                          ),
                        ),
                        //Categorias
                        SizedBox(
                          height: 18,
                          child: DefaultTextStyle(
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Mulish',
                                color: CustomColors.customContrastColor),
                            child: AnimatedTextKit(
                              pause: Duration.zero,
                              repeatForever: true,
                              animatedTexts: [
                                FadeAnimatedText('Ração'),
                                FadeAnimatedText('Petiscos'),
                                FadeAnimatedText('Areias e Banhos'),
                                FadeAnimatedText('Arranhadores e Brinquedos'),
                                FadeAnimatedText('Famárcia'),
                                FadeAnimatedText('E muitos mais :)'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  // formulário basic
                  Container(
                    height: 670,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: BoxDecoration(
                      color: CustomColors.customContrastColor4,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: 120,
                          ),

                          //email
                          CustomTextField(
                            controller: emailController,
                            icon: Icons.email,
                            label: 'E-mail',
                            validator: emailValidator,
                            textInputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),

                          //senha
                          CustomTextField(
                            controller: passwordController,
                            icon: Icons.lock,
                            label: 'Senha',
                            validator: passwordValidator,
                            isSecret: true,
                            textInputAction: TextInputAction.done,
                          ),
                          // Botão de entrar
                          SizedBox(
                            height: 50,
                            child: GetX<AuthController>(
                              builder: (authcontroller) {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                  onPressed: authcontroller.isLoading.value
                                      ? null
                                      : () {
                                          FocusScope.of(context).unfocus();

                                          if (_formKey.currentState!
                                              .validate()) {
                                            String email = emailController.text;
                                            String password =
                                                passwordController.text;

                                            authcontroller.signIn(
                                                email: email,
                                                password: password);
                                          }
                                          //Get.offAllNamed(PagesRoutes.baseRoute);
                                        },
                                  child: authcontroller.isLoading.value
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : Text(
                                          'Entrar',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: CustomColors
                                                .customContrastColor4,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                );
                              },
                            ),
                          ),

                          //Botão de esqueceu a senha
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () async {
                                final bool? result = await showDialog(
                                  context: context,
                                  builder: (_) {
                                    return ForgotPasswordDialog(
                                      email: emailController.text,
                                    );
                                  },
                                );

                                if (result ?? false) {
                                  utilsServices.showToast(
                                    message:
                                        'Um link de recuperação foi enviado para seu email.',
                                  );
                                }
                              },
                              child: const Text(
                                'Esqueceu a senha ?',
                                style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff597C8F),
                                ),
                              ),
                            ),
                          ),

                          // Divisor
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey.withAlpha(90),
                                    thickness: 2,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    'Ou',
                                    style: TextStyle(
                                      color: Color(0xff4E4D4B),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey.withAlpha(90),
                                    thickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Criar nova conta
                          SizedBox(
                            height: 50,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color(0xffCE4A95),
                                  )),
                              onPressed: () {
                                Get.toNamed(PagesRoutes.signUpRoute);
                              },
                              child: const Text(
                                'Criar conta',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffCE4A95),
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                /// top: scrrenHeight * .2,
                top: 120,
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/logo.jpeg'),
>>>>>>> 2e5a433bfb7c6220855f36ca83ef04dde59040ac
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
