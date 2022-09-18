import 'package:flutter/material.dart';
import 'package:flutter_app_cat_happy/src/pages/commom_widgets/custom_text_field.dart';
import 'package:flutter_app_cat_happy/src/config/custom_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({Key? key}) : super(key: key);

  final cpfFormartter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
  );
  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

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
                    height: 550,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //email
                        const CustomTextField(
                          icon: Icons.email,
                          label: 'E-mail',
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),

                        //senha
                        const CustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                          textInputAction: TextInputAction.next,
                        ),

                        //Nome
                        const CustomTextField(
                          icon: Icons.person,
                          label: 'Nome',
                          textInputType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                        ),

                        //Telefone
                        CustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [phoneFormatter],
                          textInputType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                        ),

                        //CPF
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormartter],
                          textInputType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar usuarios',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
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
